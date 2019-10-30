from setuptools import setup, find_namespace_packages

with open('{README_FILE}') as f:
    long_description = f.read()

setup(
  name = '{PACKAGENAME}',
  packages = find_namespace_packages(),
  version = '{VERSION}',
  license='MIT',
  long_description=long_description,
  long_description_content_type='text/markdown',
  author = 'Dolittle',
  author_email = 'post@dolittle.com',
  url = '{REPOSITORY_URL}',
  keywords = ['Dolittle', 'gRPC', 'Contracts'],
  install_requires=[
    'protobuf3',
    'protobuf'
  ],
  python_requires='>=3.3',
  classifiers=[
    'Intended Audience :: Developers',      
    'License :: OSI Approved :: MIT License'
  ]
)
