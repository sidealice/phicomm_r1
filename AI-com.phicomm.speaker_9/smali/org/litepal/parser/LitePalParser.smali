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

.field static final NODE_STORAGE:Ljava/lang/String; = "storage"

.field static final NODE_VERSION:Ljava/lang/String; = "version"

.field private static parser:Lorg/litepal/parser/LitePalParser;


# direct methods
.method public constructor <init>()V
    .locals 0

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

    .line 196
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    array-length v2, v1

    if-lez v2, :cond_1

    .line 199
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "litepal.xml"

    .line 200
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x3

    .line 201
    invoke-virtual {v0, v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_1
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "litepal.xml file is missing. Please ensure it under assets folder."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLitePalConfiguration()Lorg/litepal/parser/LitePalConfig;
    .locals 1

    .line 99
    sget-object v0, Lorg/litepal/parser/LitePalParser;->parser:Lorg/litepal/parser/LitePalParser;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lorg/litepal/parser/LitePalParser;

    invoke-direct {v0}, Lorg/litepal/parser/LitePalParser;-><init>()V

    sput-object v0, Lorg/litepal/parser/LitePalParser;->parser:Lorg/litepal/parser/LitePalParser;

    .line 102
    :cond_0
    sget-object v0, Lorg/litepal/parser/LitePalParser;->parser:Lorg/litepal/parser/LitePalParser;

    invoke-direct {v0}, Lorg/litepal/parser/LitePalParser;->usePullParse()Lorg/litepal/parser/LitePalConfig;

    move-result-object v0

    return-object v0
.end method

.method private usePullParse()Lorg/litepal/parser/LitePalConfig;
    .locals 5

    .line 146
    :try_start_0
    new-instance v0, Lorg/litepal/parser/LitePalConfig;

    invoke-direct {v0}, Lorg/litepal/parser/LitePalConfig;-><init>()V

    .line 147
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 149
    invoke-direct {p0}, Lorg/litepal/parser/LitePalParser;->getConfigInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 150
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 152
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "dbname"

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    const-string v3, "value"

    .line 156
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Lorg/litepal/parser/LitePalConfig;->setDbName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "version"

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    const-string v3, "value"

    .line 159
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/litepal/parser/LitePalConfig;->setVersion(I)V

    goto :goto_1

    :cond_2
    const-string v2, "mapping"

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    const-string v3, "class"

    .line 162
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v2}, Lorg/litepal/parser/LitePalConfig;->addClassName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "cases"

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    const-string v3, "value"

    .line 165
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lorg/litepal/parser/LitePalConfig;->setCases(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "storage"

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    const-string v3, "value"

    .line 168
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v2}, Lorg/litepal/parser/LitePalConfig;->setStorage(Ljava/lang/String;)V

    .line 176
    :cond_5
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return-object v0

    .line 183
    :catch_0
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "IO exception happened"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catch_1
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "can not parse the litepal.xml, check if it\'s in correct format"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private useSAXParser()V
    .locals 3

    .line 117
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 119
    new-instance v1, Lorg/litepal/parser/LitePalContentHandler;

    invoke-direct {v1}, Lorg/litepal/parser/LitePalContentHandler;-><init>()V

    .line 120
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 121
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {p0}, Lorg/litepal/parser/LitePalParser;->getConfigInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 132
    :catch_0
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "IO exception happened"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :catch_1
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "parse configuration is failed"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catch_2
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "can not parse the litepal.xml, check if it\'s in correct format"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catch_3
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "litepal.xml file is missing. Please ensure it under assets folder."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
