const Fs = require('fs');

module.exports = {
  "platform": "github",
  "token": process.env.RENOVATE_TOKEN,
  "repositories": [
    "ik-workshop/renovate-issue-23410-eks-addons-datadourse"
  ],
  "logLevel": process.env.LOG_LEVEL,
  "gitAuthor": "Renovate Bot <bot@renovateapp.com>",
  "prConcurrentLimit": 0,
  "prHourlyLimit": 0,
  "pruneStaleBranches": true,
  "recreateWhen": "always",
  "onboarding": false,
  "requireConfig": "optional",
  "baseBranches": ["master", "main"],
  "packageRules": [
    {
      "matchDatasources": ["aws-eks-addon"],
      // "ignoreUnstable": false
    }
  ],
  "customManagers": [
    {
      "customType": "regex",
      "fileMatch": [".*\\.tf"],
      "matchStrings": [
        ".*# renovate: eksAddonsFilter=(?<packageName>.*?)\n.*?[a-zA-Z0-9-_:]*[ ]*?[:|=][ ]*?[\"|']?(?<currentValue>[a-zA-Z0-9-_.]+)[\"|']?.*"
      ],
      "datasourceTemplate": "aws-eks-addon",
      "versioningTemplate": "semver"
    }
  ]
}