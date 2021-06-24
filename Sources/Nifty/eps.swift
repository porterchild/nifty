/**************************************************************************************************
 *  eps.swift
 *
 *  This file defines functionality for determining floating-point relative accuracy. 
 *
 *  Author: Philip Erickson
 *  Creation Date: 5 Jan 2017
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software distributed under the 
 *  License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either 
 *  express or implied. See the License for the specific language governing permissions and 
 *  limitations under the License.
 *
 *  Copyright 2017 Philip Erickson
 **************************************************************************************************/

// See the Wikipedia article on "Machine Epsilon": https://en.wikipedia.org/wiki/Machine_epsilon.
// These values match those used by MATLAB.

public let eps: (single: Double, double: Double) = (single: pow(2, -23), double: pow(2, -52))
