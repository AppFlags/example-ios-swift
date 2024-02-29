## AppFlags iOS Swift Example

  

Simple app demonstrating how to use AppFlags in an iOS Swift application.

  

For more information, see the docs: https://docs.appflags.io/sdks/ios


### To run the example


1. Clone this repository

```shell script

git clone https://github.com/AppFlags/example-ios-swift.git

```

2. Modify AppFlagsManager.swift with your `Client key`

  

* Replace `YOUR_CLIENT_KEY_HERE` with your client key

  

3. Create a `boolean` feature flag in your account with the key `test`

  

4. Run the iOS app

  

5. The UI will display the current state of the `test` feature.

  

6. Go to the AppFlags dashboard and enable/disable the `test` feature. The UI will show the changes in realtime.

  

7. You will also see a default fallback value for the `string_flag` feature because no such flag exists. You can create a `string_flag` and the UI will immediately update with the string value.
