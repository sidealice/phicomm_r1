.class public Lorg/litepal/parser/LitePalParser;
.super Ljava/lang/Object;
.source "LitePalParser.java"


# static fields
.field static final ATTR_CLASS:Ljava/lang/String; = "class"

.field static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final NODE_CASES:Ljava/lang/String; = "cases"

.field static final NODE_DB_NAME:Ljava/lang/String; = "dbname"

.field static final NODE_LIST:Ljava/lang/String; = "list"

.field static final NODE_MAPPING:Ljava/lang/String; = "mapping"

.field static final NODE_VERSION:Ljava/lang/String; = "version"

.field private static parser:Lorg/litepal/parser/LitePalParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConfigInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 189
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "fileNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 191
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 197
    :cond_0
    new-instance v3, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 198
    const-string v4, "litepal.xml file is missing. Please ensure it under assets folder."

    .line 197
    invoke-direct {v3, v4}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_1
    aget-object v1, v2, v3

    .line 192
    .local v1, "fileName":Ljava/lang/String;
    const-string v5, "litepal.xml"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 191
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static parseLitePalConfiguration()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/litepal/parser/LitePalParser;->parser:Lorg/litepal/parser/LitePalParser;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lorg/litepal/parser/LitePalParser;

    invoke-direct {v0}, Lorg/litepal/parser/LitePalParser;-><init>()V

    sput-object v0, Lorg/litepal/parser/LitePalParser;->parser:Lorg/litepal/parser/LitePalParser;

    .line 97
    :cond_0
    sget-object v0, Lorg/litepal/parser/LitePalParser;->parser:Lorg/litepal/parser/LitePalParser;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalParser;->useSAXParser()V

    .line 98
    return-void
.end method


# virtual methods
.method usePullParse()V
    .locals 12

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v6

    .line 143
    .local v6, "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 144
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 145
    .local v9, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0}, Lorg/litepal/parser/LitePalParser;->getConfigInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 147
    .local v4, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    .line 177
    return-void

    .line 148
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "nodeName":Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    .line 169
    :cond_1
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 151
    :pswitch_0
    const-string v10, "dbname"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 152
    const-string v10, ""

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "dbName":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lorg/litepal/parser/LitePalAttr;->setDbName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 171
    .end local v2    # "dbName":Ljava/lang/String;
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v10, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 173
    const-string v11, "can not parse the litepal.xml, check if it\'s in correct format"

    .line 172
    invoke-direct {v10, v11}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 154
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_1
    const-string v10, "version"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    const-string v10, ""

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "version":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/litepal/parser/LitePalAttr;->setVersion(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 174
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v11, "IO exception happened"

    invoke-direct {v10, v11}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 157
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "eventType":I
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v9    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_2
    const-string v10, "mapping"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 158
    const-string v10, ""

    const-string v11, "class"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v6, v1}, Lorg/litepal/parser/LitePalAttr;->addClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v1    # "className":Ljava/lang/String;
    :cond_4
    const-string v10, "cases"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    const-string v10, ""

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "cases":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lorg/litepal/parser/LitePalAttr;->setCases(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method useSAXParser()V
    .locals 7

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, "handler":Lorg/litepal/parser/LitePalContentHandler;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 113
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 114
    .local v4, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v3, Lorg/litepal/parser/LitePalContentHandler;

    invoke-direct {v3}, Lorg/litepal/parser/LitePalContentHandler;-><init>()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 115
    .end local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .local v3, "handler":Lorg/litepal/parser/LitePalContentHandler;
    :try_start_1
    invoke-interface {v4, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 116
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {p0}, Lorg/litepal/parser/LitePalParser;->getConfigInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 117
    return-void

    .line 118
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .end local v4    # "xmlReader":Lorg/xml/sax/XMLReader;
    .restart local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    new-instance v5, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 120
    const-string v6, "litepal.xml file is missing. Please ensure it under assets folder."

    .line 119
    invoke-direct {v5, v6}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    new-instance v5, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 123
    const-string v6, "can not parse the litepal.xml, check if it\'s in correct format"

    .line 122
    invoke-direct {v5, v6}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    new-instance v5, Lorg/litepal/exceptions/ParseConfigurationFileException;

    .line 126
    const-string v6, "parse configuration is failed"

    .line 125
    invoke-direct {v5, v6}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    new-instance v5, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v6, "IO exception happened"

    invoke-direct {v5, v6}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v4    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    goto :goto_3

    .line 124
    .end local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    goto :goto_2

    .line 121
    .end local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    goto :goto_1

    .line 118
    .end local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    .restart local v2    # "handler":Lorg/litepal/parser/LitePalContentHandler;
    goto :goto_0
.end method
