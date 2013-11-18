package beirut;
/*
 * Copyright 2010 Proofpoint, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import beirut.MainModule;

import com.google.inject.Injector;
import com.proofpoint.bootstrap.Bootstrap;
import com.proofpoint.discovery.client.announce.Announcer;
import com.proofpoint.discovery.client.DiscoveryModule;
import com.proofpoint.event.client.HttpEventModule;
import com.proofpoint.jmx.JmxHttpModule;
import com.proofpoint.http.server.HttpServerModule;
import com.proofpoint.jaxrs.JaxrsModule;
import com.proofpoint.jmx.JmxModule;
import com.proofpoint.json.JsonModule;
import com.proofpoint.log.LogJmxModule;
import com.proofpoint.node.NodeModule;
import com.proofpoint.reporting.ReportingClientModule;
import com.proofpoint.reporting.ReportingModule;
import com.proofpoint.tracetoken.TraceTokenModule;
import org.weakref.jmx.guice.MBeanModule;

import static com.proofpoint.bootstrap.Bootstrap.bootstrapApplication;

public class Main
{

    public static void main(String[] args)
            throws Exception
    {
        Bootstrap app = bootstrapApplication("beirut")
                .withModules(
                        new NodeModule(),
                        new DiscoveryModule(),
                        new HttpServerModule(),
                        new JsonModule(),
                        new JaxrsModule(),
                        new MBeanModule(),
                        new JmxModule(),
                        new JmxHttpModule(),
                        new LogJmxModule(),
                        new HttpEventModule(),
                        new ReportingModule(),
                        new ReportingClientModule(),
                        new TraceTokenModule(),
                        new MainModule()
                );

        try {
            Injector injector = app.initialize();
            injector.getInstance(Announcer.class).start();
        }
        catch (Throwable e) {
        	System.out.print(e);
            System.exit(1);
        }
    }
}