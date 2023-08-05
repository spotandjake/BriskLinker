---
title: Fs
---

## Types

Type declarations included in the Fs module.

### Fs.**FileError**

```grain
enum FileError {
  PermissionDenied,
  AddressInUse,
  AddressNotAvailable,
  AddressFamilyNotSupported,
  ResourceUnavailableOrOperationWouldBlock,
  ConnectionAlreadyInProgress,
  BadFileDescriptor,
  BadMessage,
  DeviceOrResourceBusy,
  OperationCanceled,
  NoChildProcesses,
  ConnectionAborted,
  ConnectionRefused,
  ConnectionReset,
  ResourceDeadlockWouldOccur,
  DestinationAddressRequired,
  MathematicsArgumentOutOfDomainOfFunction,
  FileExists,
  BadAddress,
  FileTooLarge,
  HostIsUnreachable,
  IdentifierRemoved,
  IllegalByteSequence,
  OperationInProgress,
  InterruptedFunction,
  InvalidArgument,
  IOError,
  SocketIsConnected,
  IsADirectory,
  TooManyLevelsOfSymbolicLinks,
  FileDescriptorValueTooLarge,
  TooManyLinks,
  MessageTooLarge,
  FilenameTooLong,
  NetworkIsDown,
  ConnectionAbortedByNetwork,
  NetworkUnreachable,
  TooManyFilesOpenInSystem,
  NoBufferSpaceAvailable,
  NoSuchDevice,
  NoSuchFileOrDirectory,
  ExecutableFileFormatError,
  NoLocksAvailable,
  NotEnoughSpace,
  NoMessageOfTheDesiredType,
  ProtocolNotAvailable,
  NoSpaceLeftOnDevice,
  FunctionNotSupported,
  TheSocketIsNotConnected,
  NotADirectoryOrASymbolicLinkToADirectory,
  DirectoryNotEmpty,
  StateNotRecoverable,
  NotASocket,
  NotSupportedOrOperationNotSupportedOnSocket,
  InappropriateIOControlOperation,
  NoSuchDeviceOrAddress,
  ValueTooLargeToBeStoredInDataType,
  PreviousOwnerDied,
  OperationNotPermitted,
  BrokenPipe,
  ProtocolError,
  ProtocolNotSupported,
  ProtocolWrongTypeForSocket,
  ResultTooLarge,
  ReadOnlyFileSystem,
  InvalidSeek,
  NoSuchProcess,
  ConnectionTimedOut,
  TextFileBusy,
  CrossDeviceLink,
  ExtensionCapabilitiesInsufficient,
}
```

Potential errors that can be raised from WASI system interactions. Note that
not all of these variants may actually be possible to encounter from this
API but were nevertheless included for full compatibility with WASI error
codes

## Values

Functions and constants included in the Fs module.

### Fs.**readFile**

<details disabled>
<summary tabindex="-1">Added in <code>next</code></summary>
No other changes yet.
</details>

```grain
readFile : (path: Path.Path) => Result<Bytes, FileError>
```

Read the contents of a file.

Parameters:

|param|type|description|
|-----|----|-----------|
|`path`|`Path.Path`|The file path to read from|

Returns:

|type|description|
|----|-----------|
|`Result<Bytes, FileError>`|`Ok(contents)` containing the bytes read if successful or `Err(err)` otherwise|

### Fs.**writeFile**

<details disabled>
<summary tabindex="-1">Added in <code>next</code></summary>
No other changes yet.
</details>

```grain
writeFile : (path: Path.Path, data: Bytes) => Result<Number, FileError>
```

Write contents to a file.

Parameters:

|param|type|description|
|-----|----|-----------|
|`path`|`Path.Path`|The file path to write to|
|`data`|`Bytes`|The bytes to write to the file|

Returns:

|type|description|
|----|-----------|
|`Result<Number, FileError>`|`Ok(numBytes)` containing the number of bytes written if successful or `Err(err)` otherwise|

### Fs.**appendFile**

```grain
appendFile : (path: Path.Path, data: Bytes) => Result<Number, FileError>
```

## Fs.Utf8

### Values

Functions and constants included in the Fs.Utf8 module.

#### Fs.Utf8.**readFile**

```grain
readFile : (path: Path.Path) => Result<String, FileError>
```

#### Fs.Utf8.**writeFile**

```grain
writeFile : (path: Path.Path, data: String) => Result<Number, FileError>
```

#### Fs.Utf8.**appendFile**

```grain
appendFile : (path: Path.Path, data: String) => Result<Number, FileError>
```

