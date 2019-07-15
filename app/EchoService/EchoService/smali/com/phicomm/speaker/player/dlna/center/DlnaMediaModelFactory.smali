.class public Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;
.super Ljava/lang/Object;
.source "DlnaMediaModelFactory.java"


# static fields
.field public static final PARAM_GET_ALBUM:Ljava/lang/String; = "param_metadata_album"

.field public static final PARAM_GET_ALBUMICONURI:Ljava/lang/String; = "param_metadata_album_uri"

.field public static final PARAM_GET_ARTIST:Ljava/lang/String; = "param_metadata_artist"

.field public static final PARAM_GET_OBJECT_CLASS:Ljava/lang/String; = "param_metadata_object_class"

.field public static final PARAM_GET_TITLE:Ljava/lang/String; = "param_metadata_title"

.field public static final PARAM_GET_URL:Ljava/lang/String; = "param_metadata__url"

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromIntent(Landroid/content/Intent;)Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;-><init>()V

    .line 43
    .local v0, "mediaInfo":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    const-string v1, "param_metadata__url"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setUrl(Ljava/lang/String;)V

    .line 44
    const-string v1, "param_metadata_object_class"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setObjectClass(Ljava/lang/String;)V

    .line 45
    const-string v1, "param_metadata_title"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setTitle(Ljava/lang/String;)V

    .line 46
    const-string v1, "param_metadata_artist"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setArtist(Ljava/lang/String;)V

    .line 47
    const-string v1, "param_metadata_album"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setAlbum(Ljava/lang/String;)V

    .line 48
    const-string v1, "param_metadata_album_uri"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setAlbumUri(Ljava/lang/String;)V

    .line 49
    return-object v0
.end method

.method public static createFromMetaData(Ljava/lang/String;)Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    .locals 8
    .param p0, "metadata"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v5, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-direct {v5}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;-><init>()V

    .line 54
    .local v5, "mediainfo":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 57
    .local v0, "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "&amp;"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 63
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 65
    .local v1, "doc":Lorg/w3c/dom/Document;
    const-string v6, "upnp:class"

    invoke-static {v1, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setObjectClass(Ljava/lang/String;)V

    .line 66
    const-string v6, "dc:title"

    invoke-static {v1, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setTitle(Ljava/lang/String;)V

    .line 67
    const-string v6, "upnp:album"

    invoke-static {v1, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setAlbum(Ljava/lang/String;)V

    .line 68
    const-string v6, "upnp:artist"

    invoke-static {v1, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setArtist(Ljava/lang/String;)V

    .line 69
    const-string v6, "upnp:albumArtURI"

    invoke-static {v1, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setAlbumUri(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v5

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getElementValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 78
    .local v3, "containers":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 79
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 80
    .local v2, "container":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 81
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 83
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 86
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v2    # "container":Lorg/w3c/dom/Node;
    :goto_1
    return-object v5

    .line 78
    .restart local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v2    # "container":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v2    # "container":Lorg/w3c/dom/Node;
    :cond_1
    const-string v5, ""

    goto :goto_1
.end method

.method public static pushMediaModelToIntent(Landroid/content/Intent;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "mediaInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 33
    const-string v0, "param_metadata__url"

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v0, "param_metadata_object_class"

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getObjectClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v0, "param_metadata_title"

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v0, "param_metadata_artist"

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v0, "param_metadata_album"

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v0, "param_metadata_album_uri"

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getAlbumUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-void
.end method
