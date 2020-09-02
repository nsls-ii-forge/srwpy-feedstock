msbuild core\\vc\\SRWLIB.vcxproj /maxcpucount:%NUMBER_OF_PROCESSORS% -property:Configuration=\"Release\";Platform=\"x64\""

%PYTHON% setup.py build_ext --inplace
%PYTHON% -m pip install . --no-deps -vv
