#!/usr/bin/env bash
# *****************************************************************
# (C) Copyright IBM Corp. 2023. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************
set -ex

mkdir -p $CONDA_PREFIX/include/openssl
find /usr/include/openssl -name *.h -exec ln -s "{}" "$CONDA_PREFIX/include/openssl" ';'

mkdir -p $CONDA_PREFIX/lib
ln -s /usr/lib64/libcrypto.so $CONDA_PREFIX/lib
ln -s /usr/lib64/libcrypto.so $CONDA_PREFIX/lib/libcrypto.so.1
ln -s /usr/lib64/libcrypto.so $CONDA_PREFIX/lib/libcrypto.so.1.1

ln -s /usr/lib64/libssl.so $CONDA_PREFIX/lib
ln -s /usr/lib64/libssl.so $CONDA_PREFIX/lib/libssl.so.1
ln -s /usr/lib64/libssl.so $CONDA_PREFIX/lib/libssl.so.1.1

mkdir -p $CONDA_PREFIX/bin
ln -s /usr/bin/openssl $CONDA_PREFIX/bin
