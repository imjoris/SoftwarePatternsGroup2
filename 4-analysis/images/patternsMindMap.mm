<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1447904828898" ID="ID_515405939" MODIFIED="1447996255858" TEXT="Patterns">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1447939238889" ID="ID_1089751727" MODIFIED="1448033688492" POSITION="right" TEXT="Server layers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      All layers (with their patterns) is very clearly described in ch8 startin on p95.
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0033">Copied from internet:</font>
    </p>
    <ul>
      <li>
        Low coupling between layers, high cohesion within them. 10/0
      </li>
      <li>
        Separation of concerns. 11/0
      </li>
      <li>
        Layers should be agnostic of consumers (a layer shouldn't know who's on top of it.) 4/4
      </li>
      <li>
        Adaptability: be able to change. 2/0
      </li>
      <li>
        User interface modules should contain no business logic. 10/0
      </li>
      <li>
        Business logic layers contain no user interface and don't refer to user interface modules. 8/0
      </li>
      <li>
        No circular references between layers. 8/0
      </li>
      <li>
        There are at least three main layer types: presentation, domain, and data source. 3/9
      </li>
      <li>
        Business layer only uses abstractions of technological services. 14/0
      </li>
      <li>
        Separate development teams by layer. 1/22
      </li>
      <li>
        Layers should be testable individual. 12/0
      </li>
      <li>
        Prefer layers to interact only with adjacent layers. 4/4
      </li>
      <li>
        A layer should be wary of exposing lower layers to upper layers. 1/0
      </li>
      <li>
        Layers should hide lower layers from upper layers.
      </li>
      <li>
        Layers should only interact with adjacent layers. 2/3
      </li>
      <li>
        Changing a lower level layer interface should not change upper layer interfaces. 2/5
      </li>
      <li>
        Distribute at layer boundaries 0/18
      </li>
      <li>
        Layers are a logical artifact that does not imply distribution between layers. 11/0
      </li>
      <li>
        Lower layers should not depend on upper layers. 6/0
      </li>
      <li>
        Every layer should have a secret. 3/2
      </li>
      <li>
        Layers should be shy about their internals. 8/0
      </li>
      <li>
        Layers should be substitutable. 2/0
      </li>
      <li>
        Layers can have multiple adjacent upper layers. 2/1
      </li>
      <li>
        Always wrap domain logic with a service layer. 4/5
      </li>
      <li>
        Rethrow exceptions at layer boundaries. 0/15
      </li>
      <li>
        Layers should be independently maintainable and versioned. 2/0
      </li>
      <li>
        Layers should have separate deployment units (eg separate jars or assemblies for each layer). 0/7
      </li>
      <li>
        Layers may share infrastructural aspects (eg security) 7/0
      </li>
      <li>
        The domain layer should not talk to external systems - the service layer should do that. 2/3
      </li>
      <li>
        Inbound external interface modules (eg web service handlers) should not contain business logic. 10/0
      </li>
    </ul>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1447939438170" ID="ID_1245209060" MODIFIED="1447940383156" TEXT="Service layer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Use the service layer with the &quot;operation script&quot; variation. Meaning that the Service Layer consists of thick classes that contain logic. The service layer exposes a set of services to be used by clients and for each service, there is a certain script that will be executed when the service is called.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <blockquote http-equiv="content-type" content="text/html; charset=utf-8" style="margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(255, 235, 142); font-size: 15px; color: rgb(34, 34, 34); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.5px; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 249, 227)">
      <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 15px; clear: both">
        The easier question to answer is probably when not to use it. You probably don't need a Service Layer if your application's business logic will only have one kind of client - say, a user interface - and it's use case responses don't involve multiple transactional resources. [...]
      </p>
      <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 15px; clear: both">
        But as soon as you envision a second kind of client, or a second transactional resource in use case responses, it pays to design in a Service Layer from the beginning.
      </p>
    </blockquote>
    <br class="Apple-interchange-newline" />
    
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1447941304846" ID="ID_1424813251" MODIFIED="1447949118151" TEXT="Remote facade">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P388: <font color="#ff0033">&quot;Provides a coarse-grained facadee on fine-grained objects to improve efficiency over a network.&quot;</font>
    </p>
    <p>
      
    </p>
    <p>
      OOP programming aims at making small classes with very specific functions behaviour (high cohesion and low coupling). This way the application logic will consist of a wide variaty of specific classes. For the clients using the server layer, however, having to make a lot of calls to the service layer will lead to a lot of network roundtrips and overhead. This pattern reduces this performance decrease by creating higher lever, more coarse-grained functions for the clients to use. The remote facade will then use the specific functions to obtain the data, it does not contain any logic itself.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Classes in
    </p>
    <p>
      To reduce the amount of network trafic.
    </p>
    <p>
      Calls made over the internet can be very expensive.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1447949357104" ID="ID_1674076489" MODIFIED="1447949362760" TEXT="Domain layer">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1447949626947" ID="ID_1778371036" MODIFIED="1448031753841" TEXT="Domain model">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff0000">TODO: Research how revenue recognition is done (p 120) </font>
    </p>
    <p>
      
    </p>
    <p>
      The domain model will be used in the domain layer. Meaning that the domain is Object Oriented, with every class representing one specific, individual, meaningfull part.
    </p>
    <p>
      
    </p>
    <p>
      Alternatives: Transaction Script and table module
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1447955148167" ID="ID_1887780093" MODIFIED="1448035652128" TEXT="Unit of work">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff0066">Do we need this? The domain might not be doing any analysis at all, it just uses spark for that.</font>
    </p>
    <p>
      
    </p>
    <p>
      Provides concurency controll.
    </p>
    <p>
      
    </p>
    <p>
      Analyzing the data can be computationally intensive, which is why multiple threads will be used do distrubute the work. This requires coordination of the data that is being handeled. The Unit of work pattern <font color="#ff0066">&quot;Maintains a list of objects affected by a business transaction and coordinates the writing out of changes and the resolution of concurrency problems.&quot; </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1447952804651" ID="ID_206702687" MODIFIED="1448005991749" TEXT="Data source layer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The main database will be quite simple and the database actions won't be very complicated. However, the tables needed for the statistics can become very complex.
    </p>
    <p>
      
    </p>
    <p>
      Database structure draft:
    </p>
    <p>
      &#160;<img src="SoftwarePatternsDatabaseDraft.jpg" />
    </p>
    <p>
      
    </p>
    <p>
      Three main patterns to connect to data sources:
    </p>
    <ul>
      <li>
        &#160;Table data gateway (p144)
      </li>
      <li>
        Row data gateway (p152)
      </li>
      <li>
        Active record (p160)
      </li>
      <li>
        Data mapper (p165)
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      Because the domain model is used in the domain layer, the data mapper pattern is best to use . (153 and 97)
    </p>
    <p>
      The logic that will operate on the data will generate statistics of the data, which can become quite complex. This is why the data mapper pattern is chosen as a pattern for connecting to the data sources. This pattern is the most advanced pattern, but provides the best functionality and abstraction.
    </p>
    <p>
      
    </p>
    <p>
      With the active record pattern, the database access/communication, data and logic of that data is all stored in the same class. Since the logic that will be executed on the sensor data is very complex, this patterns will not be usefull.
    </p>
    <p>
      
    </p>
    <p>
      A gateway of any kind leads to performance overhead, because for each call comming from the domain model pattern, a database call is made. It lacks the neccesary coordination.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1447954674491" ID="ID_310794843" MODIFIED="1448003455513" TEXT="Data mapper">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1447954853979" ID="ID_416714497" MODIFIED="1448035652121" TEXT="Table data gateway">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff0033">Not needed if the repository is used </font>
    </p>
    <p>
      
    </p>
    <p>
      The data mapper can use the table data gateway to remove the dependency on how the data is queried. Queries can be replaced with stored procedures in the Table data gateway without the data mappers having to change (lost the page:()
    </p>
    <p>
      
    </p>
    <p>
      Using a record set (504) turning into a unit of work (184)? P98
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node COLOR="#990000" CREATED="1448005388704" ID="ID_743577165" MODIFIED="1448029850609" TEXT="Repository">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P322:
    </p>
    <p>
      &quot;Mediates between the domain and data mapping layers using a collection-like interface for accesing domain objects.&quot;
    </p>
    <p>
      
    </p>
    <p>
      P323:
    </p>
    <p>
      &quot;Repository supports the objective of achieving a clean separation and one-way dependency between the domain and data mapping layers&quot;
    </p>
    <p>
      
    </p>
    <p>
      P324:
    </p>
    <p>
      &quot;Under the covers, Repository combines Metadata Mapping (329) with a Query object (316) to automatically generate SQL code from the criteria.&quot;
    </p>
    <p>
      ...
    </p>
    <p>
      &quot;In a large system with many domain object types and many possible queries, Repository reduces the amount of code needed to deal with all the querying that go's on.&quot;
    </p>
    <p>
      ____
    </p>
    <p>
      
    </p>
    <p>
      The repository pattern mediates between the domain and data layer. The repository clients create a criteria object, specifying what kind of data is wanted (like criteria.equals(Person.LAST_NAME, &quot;Schaefers&quot;). Then the clients use this criteria by invoking repository.matching(criteria) to receive the data from the repository. The client just asks the data, it has no further knoledge about any interaction with any data source/data base.
    </p>
    <p>
      
    </p>
    <p>
      The repository gives a lot more controll over how the data is handled. The benefits are:
    </p>
    <ul>
      <li>
        Reduces code (and code complexity)
      </li>
      <li>
        Increases performance
      </li>
      <li>
        Seperated domain and data layers, increasing flexibility and changabilty
      </li>
    </ul>
    <p>
      This energy system will get the analysis data by using complex mapreduce queries. The database that executes these queries, however, might change. Or the system might decide to use multiple databases and data sources.
    </p>
    <p>
      Using the Repository pattern, these changes can be made fast. The repository also allows for multiple configurations to exist. So an extra repository could be created for testing purposes, only using an in-memory database to increase the test execution speed.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1447939573416" ID="ID_1001322191" MODIFIED="1447996376619" POSITION="left" TEXT="Text structure">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Structure of explaining a pattern in the example document:
    </p>
    <ul>
      <li>
        Source
      </li>
      <li>
        Issue
      </li>
      <li>
        Assumption/Constraints
      </li>
      <li>
        Positions
      </li>
      <li>
        Decision
      </li>
      <li>
        Argument
      </li>
      <li>
        Implications
      </li>
      <li>
        Related Requirements
      </li>
    </ul>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1447940420058" ID="ID_1907788835" MODIFIED="1448036014003" POSITION="right" TEXT="Layer Supertype">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      p475 POEAA
    </p>
    <p>
      &quot;A type that acts as the supertype for all types in the layer&quot;.
    </p>
    <p>
      With this pattern, all the classes of a certain layer have the same superclass. This superclass then contains the features that are very common for the layer.
    </p>
    <p>
      
    </p>
    <p>
      This pattern will be used in every layer
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1447940795488" ID="ID_179004626" MODIFIED="1447940981585" TEXT="Service layer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      All the services need to take care of security. The client needs to be authenticated and the data needs to be decrypted by the service layer. All this security logic will be placed in a supertype using the &quot;Layer Supertype&quot; pattern In the service layer it contains the security logic.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1447940999607" ID="ID_1096039285" MODIFIED="1447996288448" TEXT="Domain layer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      From book:
    </p>
    <p>
      <font color="#ff0000">-&#160;&#160;&quot;Commn features, such as the storage and handling of 'Identity Fields (216), can go there.&quot;</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1448004927239" ID="ID_1649354628" MODIFIED="1448005383846" TEXT="Data source">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Thhe data mapper in the data source pattern can use a layer supertype that handles all the common behaviour, which can greatly reduce the extra work of coding. (p308 (Metadata mapping pattern))
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1448003883181" ID="ID_861546644" MODIFIED="1448031509485" POSITION="left" TEXT="ClientUI">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;Pick an HTML browser if you can get away with it and a rich client if that's not possible&quot; p99
    </p>
    <p>
      because when using a rich cliient, &quot;you need a certain amount of control and deployment of the clients.&quot;
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1448004243623" ID="ID_932785085" MODIFIED="1448033276088" TEXT="Controller">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      On p 99:
    </p>
    <ul>
      <li>
        <font color="#ff0000">Given a free choice, I'd recommend Page Controller (p333). </font>
      </li>
      <li>
        <font color="#ff0000">More complex navigation and UI lead you toward a Front Controller (344)</font>
      </li>
    </ul>
    <p>
      Page controller: controller for each page. So upon receiving a request do:
    </p>
    <ul>
      <li>
        Decode url, extract data
      </li>
      <li>
        invoke model to process data
      </li>
      <li>
        determine view and use the model data to create the HTML to return
      </li>
    </ul>
    <p>
      Front page controller:
    </p>
    <p>
      One controller for all requests/views. This allows building a filter chain, handeling authentication, loggingg etc.
    </p>
    <p>
      Front page is better/helps with concurency, because a new command object is created on each request. Reducing thread-safety concerns. (P346). The model, however, can have shared objects that do require thread savety management.
    </p>
    <p>
      
    </p>
    <p>
      The front page will be used, because it profides more functionality to the system. The only advantage of a page controller compared to the front controller is that it has a more natural structure.
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1448004321262" ID="ID_1377229091" MODIFIED="1448031645636" TEXT="View">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Template view (350) or Transform view (361).
    </p>
    <p>
      
    </p>
    <p>
      (P geen idee):
    </p>
    <p>
      Template views have the edge at the moment.
    </p>
    <p>
      ___
    </p>
    <p>
      
    </p>
    <p>
      Template view: Write HTML code including markers. Replace the markers with the data when the page is requested. (Play framework)
    </p>
    <p>
      Transform view: convert the domain data to HTML, &quot;transform&quot; the domain data. Upon a request, it get the domain data, for each item in the data it looks for a appropriate &quot;transform&quot; to transform the data to html.
    </p>
    <p>
      
    </p>
    <p>
      The template view will be used, because it is used a lot more then the transform view. Major web frameworks are based on this pattern (the play framework, laravel...). The view patterns don't have an important difference in how beneficial they are to the project.
    </p>
    <p>
      
    </p>
    <p>
      Transform view avoids having too much data in the HTML, because of the transform methods creating the HTML.
    </p>
    <p>
      Transform view can be tested without having a web server up.
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1448004337676" ID="ID_1505427941" MODIFIED="1448005913704" TEXT="Model">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Communication with the model: p100:
    </p>
    <p>
      Preference: Having everything run in one process if you can. Else Remote Facade (p388) and DTO (p 401).
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
</node>
</map>
