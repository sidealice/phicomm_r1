.class public Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;
.super Ljava/lang/Object;
.source "CookieUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$1;,
        Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$CookiePathComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 24
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Argument is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 27
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v2, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v8, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    if-nez v8, :cond_2

    .line 31
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 66
    :goto_0
    return-object v8

    .line 34
    :cond_2
    const-string v8, "https"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 35
    .local v7, "secureLink":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    sget-object v8, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-virtual {v8, p0}, Lorg/xutils/http/cookie/DbCookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 40
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v8

    if-nez v8, :cond_3

    .line 44
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "ports":Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 46
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 47
    .local v5, "port":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_5

    .line 48
    const-string v8, "https"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v5, 0x1bb

    .line 50
    :cond_5
    :goto_2
    invoke-static {v6, v5}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->isInPortList(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 51
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_6
    const/16 v5, 0x50

    goto :goto_2

    .line 54
    .end local v5    # "port":I
    :cond_7
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v6    # "ports":Ljava/lang/String;
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    goto :goto_0

    .line 63
    :cond_9
    invoke-static {v3}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->sortByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "Cookie"

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    goto :goto_0
.end method

.method private static isInPortList(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "lst"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "i":I
    const/4 v1, -0x1

    .line 111
    .local v1, "val":I
    :goto_0
    if-lez v0, :cond_2

    .line 113
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    if-ne v1, p1, :cond_1

    .line 131
    :cond_0
    :goto_1
    return v2

    .line 117
    :catch_0
    move-exception v4

    .line 119
    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 124
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 125
    if-eq v1, p1, :cond_0

    :cond_3
    :goto_2
    move v2, v3

    .line 131
    goto :goto_1

    .line 128
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const-string p0, ""

    .line 146
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_1
    return-object p0
.end method

.method private static pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static sortByPath(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v8, 0x1

    .line 75
    new-instance v6, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$CookiePathComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$CookiePathComparator;-><init>(Lcom/phicomm/speaker/player/mhdInterface/CookieUtil$1;)V

    invoke-static {p0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 84
    .local v4, "minVersion":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 85
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v4

    goto :goto_0

    .line 90
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    if-ne v4, v8, :cond_2

    .line 91
    const-string v6, "$Version=\"1\"; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 95
    if-eqz v2, :cond_3

    .line 96
    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/HttpCookie;

    invoke-virtual {v6, v8}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 100
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/HttpCookie;

    invoke-virtual {v6}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v1
.end method
