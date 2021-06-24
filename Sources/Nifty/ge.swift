/***************************************************************************************************
 *  ge.swift
 *
 *  This file provides functionality for greater-than-or-equal-to comparison.
 *
 *  Author: Philip Erickson
 *  Creation Date: 1 May 2016
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
 *  Copyright 2016 Philip Erickson
 **************************************************************************************************/

public func >= <T>(left: Matrix<T>, right: Matrix<T>) -> Matrix<Double> 
    where T: Comparable { return ge(left, right) }
public func >= <T>(left: Matrix<T>, right: T)         -> Matrix<Double> 
    where T: Comparable { return ge(left, right) }
public func >= <T>(left: T, right: Matrix<T>)         -> Matrix<Double> 
    where T: Comparable { return ge(left, right) }

/// Determine greater than or equal to inequality.
///
/// - Paramters:
///     - A: Matrix to compare
///     - B: Matrix to compare against
/// - Returns: matrix with ones where comparison is true and zeros elsewhere
public func ge<T>(_ A: Matrix<T>, _ B: Matrix<T>) -> Matrix<Double>
    where T: Comparable
{
    precondition(A.size == B.size, "Matrices must be same size")

    var m = [Double]()
    for i in 0..<A.count
    {        
        m.append(A[i] >= B[i] ? 1 : 0)
    }

    return Matrix(A.size, m)
}

/// Determine greater than or equal to inequality.
///
/// - Paramters:
///     - A: Matrix to compare
///     - b: Value to compare against
/// - Returns: matrix with ones where comparison is true and zeros elsewhere
public func ge<T>(_ A: Matrix<T>, _ b: T) -> Matrix<Double>
    where T: Comparable
{
    var m = [Double]()
    for i in 0..<A.count
    {        
        m.append(A[i] >= b ? 1 : 0)
    }

    return Matrix(A.size, m)
}

/// Determine greater than or equal to inequality.
///
/// - Paramters:
///     - a: Value to compare
///     - B: Matrix to compare against
/// - Returns: matrix with ones where comparison is true and zeros elsewhere
public func ge<T>(_ a: T, _ B: Matrix<T>) -> Matrix<Double>
    where T: Comparable
{
    return ge(B, a)
}