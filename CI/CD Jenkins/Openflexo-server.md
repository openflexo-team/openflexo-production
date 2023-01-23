# Openflexo Server Factory

## Overview

- A pipeline to produce on-demand Openflexo Server instances.

## Prerequisites

- You only need a free port to start the server.

## Steps

1. Step 1: The pipeline generate authentication token.
2. Step 2: The pipeline then displays key to be used later in order to make server authentication requests.
3. Step 3: Jenkins hash then securely stores the key.
4. Step 4: Jenkins runs the gradle task that stars an Openflexo Server instance.

## Parameters

- The pipeline takes one single parameter which is the port that we will start the server on.

## Output

- The jenkins stars a server in the background, so there is no server log to be displayed.

## Troubleshooting

- In order to troubleshoot the server instances as the server log is muted from jenkins output, the log is instead stored here : /var/lib/jenkins/Library/Logs/Flexo/
