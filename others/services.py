#!/usr/bin/env python3

import sys
import codecs
import re
import json

KEY_VALUE_PATTERN = re.compile('^(?P<key>\w+)\s+:\s*(?P<value>.+)?$')

WRAP_PATTERN = re.compile('^{(?P<content>.*)}$')

SPLIT_PATTERN = re.compile(',\s+')


def get_key(row):
    match = KEY_VALUE_PATTERN.match(row)
    return match.group('key') if match else None


def get_value(row):
    match = KEY_VALUE_PATTERN.match(row)
    return match.group('value') if match else None


def get_list(row):
    match = KEY_VALUE_PATTERN.match(row)
    if match:
        value = match.group('value')
        if not value:
            return []
        match = WRAP_PATTERN.match(value)
        if not match:
            return []
        content = match.group('content')
        return [value for value in re.split(SPLIT_PATTERN, content) if value]
    return None


class Service:

    def __init__(self, **kwargs):
        self.__name = kwargs.get('name', None)
        self.__display_name = kwargs.get('display_name', None)
        self.__status = kwargs.get('status', None)
        self.__service_type = kwargs.get('service_type', None)
        self.__start_name = kwargs.get('start_name', None)
        self.__start_type = kwargs.get('start_type', None)
        self.__description = kwargs.get('description', None)
        self.__required_services = kwargs.get('required_services', None)
        self.__services_dependent_on = kwargs.get('services_dependent_on', None)

    def __repr__(self):
        return self.as_dict().__repr__()

    def __str__(self):
        return self.as_dict().__str__()

    def as_dict(self):
        return {'name': self.name,
                'display_name': self.display_name,
                'status': self.status,
                'start_name': self.start_name,
                'description': self.description,
                'service_type': self.service_type,
                'start_type': self.start_type,
                'required_services': self.required_services,
                'services_dependent_on': self.services_dependent_on}

    @property
    def name(self):
        return self.__name

    @property
    def display_name(self):
        return self.__display_name

    @property
    def description(self):
        return self.__description

    @description.setter
    def description(self, value):
        self.__description = value

    @property
    def start_name(self):
        return self.__start_name

    @start_name.setter
    def start_name(self, value):
        self.__start_name = value

    @property
    def status(self):
        return self.__status

    @property
    def service_type(self):
        return self.__service_type

    @property
    def start_type(self):
        return self.__start_type

    @property
    def required_services(self):
        return self.__required_services

    @property
    def services_dependent_on(self):
        return self.__services_dependent_on


class ComplexEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, Service):
            return obj.as_dict()
        return json.JSONEncoder.default(self, obj)


if __name__ == '__main__':
    COMPLEX_VALUES = {'RequiredServices', 'ServicesDependentOn'}


    def create_blank_element():
        return {'Name': None,
                'DisplayName': None,
                'Description': None,
                'StartName': None,
                'Status': None,
                'ServiceType': None,
                'StartType': None,
                'StartMode': None,
                'RequiredServices': [],
                'ServicesDependentOn': []}


    services = {}


    def try_add_service(service):
        if any(service.values()):
            services[service['Name'].lower()] = Service(name=service['Name'],
                                                        display_name=service['DisplayName'],
                                                        status=service['Status'],
                                                        service_type=service['StartType'],
                                                        description=service['Description'],
                                                        start_type=service['StartType'],
                                                        required_services=service['RequiredServices'],
                                                        services_dependent_on=service['ServicesDependentOn'])


    with codecs.open('/home/pmateusz/Desktop/first_output.txt', encoding='UTF-16LE') as input_stream:
        element = create_blank_element()
        for line in input_stream:
            line_to_use = line.strip()
            if not line_to_use:
                try_add_service(element)
                element = create_blank_element()
                continue
            key = get_key(line_to_use)
            element[key] = get_list(line_to_use) if key in COMPLEX_VALUES else get_value(line_to_use)
        try_add_service(element)

    with codecs.open('/home/pmateusz/Desktop/second_output.txt', encoding='UTF-16LE') as input_stream:
        name, start_name, description = None, None, None
        for line in input_stream:
            line_to_use = line.strip()
            if not line_to_use:
                if name and (start_name or description):
                    name_to_use = name.lower()
                    if start_name:
                        services[name_to_use].start_name = start_name
                    if description:
                        services[name_to_use].description = description
                name, start_name, description = None, None, None
                continue

            key = get_key(line_to_use)
            if key == 'Name':
                name = get_value(line_to_use)
            elif key == 'StartName':
                start_name = get_value(line_to_use)
            elif key == 'Description':
                description = get_value(line_to_use)
            elif key == 'StartMode' or key == 'DisplayName':
                continue
            else:
                if not key:
                    continue
                print('Unknown key', key, line_to_use, file=sys.stderr)

    json.dump(services, sys.stdout, cls=ComplexEncoder)

    sys.exit(1)
