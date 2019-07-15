.class public Lcom/unisound/common/ai;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static final b:Ljava/lang/String; = "ResultToJsonUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unisound/common/ai;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;F)Lorg/json/JSONObject;
    .locals 10

    const/4 v2, 0x0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    move v6, v2

    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_1

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/ai;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;FLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const-string v0, "l"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "score"

    float-to-double v2, p1

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;FLjava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    const/4 v11, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-static {p2, p0}, Lcom/unisound/common/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    sget-boolean v3, Lcom/unisound/common/ai;->a:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ResultToJsonUtil"

    aput-object v4, v3, v2

    const-string v4, "FileUtiles -Node.length ="

    aput-object v4, v3, v10

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ", node:value ="

    aput-object v4, v3, v11

    const/4 v4, 0x4

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    sget-boolean v3, Lcom/unisound/common/ai;->a:Z

    if-eqz v3, :cond_1

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "ResultToJsonUtil"

    aput-object v4, v3, v2

    const-string v4, "FileUtiles -childElement ="

    aput-object v4, v3, v10

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_1
    move v6, v2

    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v10, :cond_2

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/ai;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;FLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    const-string v0, "l"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "score"

    float-to-double v2, p1

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\'1.0\' encoding=\'utf-8\'?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/unisound/common/ai;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ResultToJsonUtil"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "xmlText = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unisound/common/ai;->a(Ljava/io/File;)Z

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;FLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "s"

    float-to-double v2, p3

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-virtual {p0, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "w"

    invoke-virtual {p0, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/ai;->b(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;FLjava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    sget-boolean v0, Lcom/unisound/common/ai;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ResultTOJsonUtil"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "result before format : "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p0}, Lcom/unisound/common/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v2, "utf-8"

    invoke-interface {v9, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    :try_start_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/unisound/common/ai;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ResultTOJsonUtil"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "START_DOCUMENT : "

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    sget-boolean v0, Lcom/unisound/common/ai;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ResultTOJsonUtil"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "START_TAG : "

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "s"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    :cond_3
    :goto_2
    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/unisound/common/ai;->a:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ResultTOJsonUtil"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "START_TAG : tagName ="

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v3, ", tagValue ="

    aput-object v3, v0, v2

    const/4 v2, 0x4

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/ai;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ResultTOJsonUtil"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    aput-object v2, v5, v10

    const/4 v2, 0x2

    const-string v10, "\u7684nextText\u4e0d\u5b58\u5728\u6216\u5176TAG\u6ca1\u6709\u6b63\u5e38\u7ed3\u675f ********"

    aput-object v10, v5, v2

    invoke-static {v5}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, ">"

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v10, "ResultTOJsonUtil"

    aput-object v10, v2, v3

    const/4 v3, 0x1

    const-string v10, "MissedTagValue ="

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "<"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v2, "<"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_3
    sget-boolean v0, Lcom/unisound/common/ai;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ResultTOJsonUtil"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "END_TAG : "

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ResultTOJsonUtil"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "TAG \u540d\u79f0\u4e0d\u5168 ****************"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :cond_5
    const-string v0, "l"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "score"

    float-to-double v2, p1

    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v5, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/ai;->b(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    return-void
.end method
