# SwiftPlayground
Some experiments with Playgrounds in XCode 11 using the Swift programming language.

<b>What is Property Wrapper in swift</b>

Property wrappers were introduced in Swift 5.1 to allow users to add additional behavior to properties.

A property wrapper is a generic structure that encapsulates read and write access to the property and adds additional behavior to it

<b>What limitations does the Property wrapper have?</b>

Property wrappers come not without their price. They impose a number of restrictions :

* Applying multiple wrappers to the property is not allowed. .  
* always need to defined with ‘@properWrapper’ and must have ‘wrappedValue’ property.
* cannot be set as ‘lazy’, ‘weak’, ‘unowned’ or ‘@NSManaged’.
* cannot be declared in protocol or extension.
* cannot be overridden.
* cannot have custom ‘get’ or ‘set’.

<b>What is extension</b>
* Extensions add new functionality to an existing class, structure, enumeration, or protocol type.

<b>Differnce b/w property wrapper and extension.</b>

Extension belong to the whole data type and property wrapper just stick to particular property on which you want to perform that additional behaviour.
