.class public Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;
.super Ljava/lang/Object;
.source "MhdMusicApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$1;,
        Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$SongAddressRequesterFactory;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final REQUEST_GET_TRACKLINK_ADDRESS:Ljava/lang/String; = "https://dev-openapi.dmhmusic.com/auth/"

.field private static final REQUEST_GET_TRACKLINK_PARAMETER:Ljava/lang/String; = "q"

.field private static final REQUEST_LOGIN_ADDRESS:Ljava/lang/String; = "https://dev-openapi.dmhmusic.com/OPENAPI/openApiLogin.json"

.field private static final REQUEST_LOGIN_PARAMETER:Ljava/lang/String; = "q_source"

.field private static final REQUEST_UNISOUND_GET_TRACKLINK_ADDRESS:Ljava/lang/String; = "http://10.30.4.12:8080/data-cloud-service/rest/v1/music/get_song_by_id"

.field private static final SP_NAME_MHD_MUSIC_API_COOKIE:Ljava/lang/String; = "MHD_MUSIC_API_COOKIE"

.field private static final SP_NAME_MHD_MUSIC_API_COOKIETIME:Ljava/lang/String; = "MHD_MUSIC_API_COOKIETIME"

.field private static final SP_NAME_MHD_MUSIC_API_PUBLICKEY:Ljava/lang/String; = "MHD_MUSIC_API_PUBLICKEY"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$1;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi$SongAddressRequesterFactory;->access$100()Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;

    move-result-object v0

    return-object v0
.end method

.method public static loginApi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ApiKey"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v11, 0x0

    .line 130
    .local v11, "publicKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 131
    .local v4, "cookie":Ljava/lang/String;
    new-instance v14, Lorg/xutils/http/RequestParams;

    const-string v18, "https://dev-openapi.dmhmusic.com/OPENAPI/openApiLogin.json"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 132
    .local v14, "requestParams":Lorg/xutils/http/RequestParams;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    .line 133
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 134
    const-string v18, "q_source"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :try_start_0
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v18

    const-class v19, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v14, v1}, Lorg/xutils/HttpManager;->postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 137
    .local v15, "result":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "get publicKey result: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v18, Lcom/google/gson/Gson;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/Gson;-><init>()V

    const-class v19, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;

    .line 139
    .local v13, "publicKeyResponse":Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;
    invoke-virtual {v13}, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->getData()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "data":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 141
    const-string v18, "\n"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "\\\\"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "BEGIN PUBLIC KEY"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "END PUBLIC KEY"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "-"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    const-string v18, "MHD_MUSIC_API_PUBLICKEY"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    sget-object v9, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    .line 150
    .local v9, "instance":Lorg/xutils/http/cookie/DbCookieStore;
    const-string v18, "https://dev-openapi.dmhmusic.com/OPENAPI/openApiLogin.json"

    invoke-static/range {v18 .. v18}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xutils/http/cookie/DbCookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v5

    .line 151
    .local v5, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/HttpCookie;

    .line 152
    .local v7, "httpCookie":Ljava/net/HttpCookie;
    invoke-virtual {v7}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 154
    .local v17, "value":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "httpCookie name : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", httpCookie: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "httpCookie Domain : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", MaxAge: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Comment: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", CommentURL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const-string v18, "JSESSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 161
    move-object/from16 v4, v17

    .line 162
    const-string v18, "MHD_MUSIC_API_COOKIE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v18, "MHD_MUSIC_API_COOKIETIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setLongValue(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 169
    .end local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v6    # "data":Ljava/lang/String;
    .end local v7    # "httpCookie":Ljava/net/HttpCookie;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "instance":Lorg/xutils/http/cookie/DbCookieStore;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "publicKeyResponse":Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;
    .end local v15    # "result":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 170
    .local v16, "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v12, v11

    .line 172
    .end local v11    # "publicKey":Ljava/lang/String;
    .end local v16    # "throwable":Ljava/lang/Throwable;
    .local v12, "publicKey":Ljava/lang/String;
    :goto_1
    return-object v12

    .line 167
    .end local v12    # "publicKey":Ljava/lang/String;
    .restart local v5    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "instance":Lorg/xutils/http/cookie/DbCookieStore;
    .restart local v11    # "publicKey":Ljava/lang/String;
    .restart local v13    # "publicKeyResponse":Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;
    .restart local v15    # "result":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "get publicKey : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", cookie: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v11

    .line 168
    .end local v11    # "publicKey":Ljava/lang/String;
    .restart local v12    # "publicKey":Ljava/lang/String;
    goto :goto_1
.end method

.method public static trackLinkApi(Landroid/content/Context;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/TrackLink;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    const-string v17, "MHD_MUSIC_API_COOKIETIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getLongValue(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 88
    .local v4, "cookieTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 89
    .local v8, "now":J
    const-wide/32 v18, 0x240c8400

    add-long v18, v18, v4

    cmp-long v17, v8, v18

    if-gtz v17, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-nez v17, :cond_1

    .line 90
    :cond_0
    const-string v17, "aLZVIOQABfQRQ"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/mhdInterface/MhdMusicApi;->loginApi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    :cond_1
    const-string v17, "MHD_MUSIC_API_COOKIE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "cookie":Ljava/lang/String;
    const-string v17, "MHD_MUSIC_API_PUBLICKEY"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "publicKey":Ljava/lang/String;
    if-eqz v7, :cond_2

    if-nez v2, :cond_3

    .line 95
    :cond_2
    const/16 v17, 0x0

    .line 125
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v4    # "cookieTime":J
    .end local v7    # "publicKey":Ljava/lang/String;
    .end local v8    # "now":J
    :goto_0
    return-object v17

    .line 98
    .restart local v2    # "cookie":Ljava/lang/String;
    .restart local v4    # "cookieTime":J
    .restart local v7    # "publicKey":Ljava/lang/String;
    .restart local v8    # "now":J
    :cond_3
    new-instance v14, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;

    const/16 v17, 0x80

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;-><init>(Ljava/lang/String;I)V

    .line 99
    .local v14, "trackLinkRequest":Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;
    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "trackLinkRequestString":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trackLinkRequestString : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "publicKey : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cookie : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {v15, v7}, Lcom/phicomm/speaker/player/util/RSAUtils;->encryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "encryptValue":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "q encryptValue : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v10, Lorg/xutils/http/RequestParams;

    const-string v17, "https://dev-openapi.dmhmusic.com/auth/"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 107
    .local v10, "requestParams":Lorg/xutils/http/RequestParams;
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 108
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "q="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v17, "https://dev-openapi.dmhmusic.com/OPENAPI/openApiLogin.json"

    invoke-static/range {v17 .. v17}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    new-instance v18, Ljava/util/HashMap;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(I)V

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/mhdInterface/CookieUtil;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 112
    .local v12, "singleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v17, "Cookie"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 114
    const-string v17, "Cookie"

    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/xutils/http/RequestParams;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "requestParams : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v17

    const-class v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v10, v1}, Lorg/xutils/HttpManager;->postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 119
    .local v11, "result":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get TrackLink result: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    const-class v18, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;

    .line 121
    .local v16, "trackLinkResponse":Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;
    invoke-virtual/range {v16 .. v16}, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->getTrackLink()Lcom/phicomm/speaker/player/mhdInterface/TrackLink;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_0

    .line 122
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v3    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "cookieTime":J
    .end local v6    # "encryptValue":Ljava/lang/String;
    .end local v7    # "publicKey":Ljava/lang/String;
    .end local v8    # "now":J
    .end local v10    # "requestParams":Lorg/xutils/http/RequestParams;
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "singleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "trackLinkRequest":Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;
    .end local v15    # "trackLinkRequestString":Ljava/lang/String;
    .end local v16    # "trackLinkResponse":Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;
    :catch_0
    move-exception v13

    .line 123
    .local v13, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public static unisoundTrackLinkApi(Landroid/content/Context;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 55
    if-nez p1, :cond_0

    move-object v4, v5

    .line 81
    :goto_0
    return-object v4

    .line 60
    :cond_0
    :try_start_0
    new-instance v0, Lorg/xutils/http/RequestParams;

    const-string v4, "http://10.30.4.12:8080/data-cloud-service/rest/v1/music/get_song_by_id"

    invoke-direct {v0, v4}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "requestParams":Lorg/xutils/http/RequestParams;
    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 62
    const-string v4, "id"

    invoke-virtual {v0, v4, p1}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v4, "appkey"

    const-string v6, "aLZVIOQABfQRQ"

    invoke-virtual {v0, v4, v6}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v4, "secret"

    const-string v6, "aLZVIOQABfQRQ"

    invoke-virtual {v0, v4, v6}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v4, "sid"

    const-string v6, "uni_internal_test_session_id"

    invoke-virtual {v0, v4, v6}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v4, "uni_key"

    const-string v6, "uni_internal_test_appkey"

    invoke-virtual {v0, v4, v6}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "uni_uid"

    const-string v6, "uni_internal_apidoc_test_id"

    invoke-virtual {v0, v4, v6}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "source"

    const-string v6, "6"

    invoke-virtual {v0, v4, v6}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestParams : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v4

    const-class v6, Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Lorg/xutils/HttpManager;->postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get TrackLink result: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;

    invoke-virtual {v4, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;

    .line 75
    .local v1, "response":Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->getMusicinfo()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->getMusicinfo()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    .end local v0    # "requestParams":Lorg/xutils/http/RequestParams;
    .end local v1    # "response":Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 79
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_1
    move-object v4, v5

    .line 81
    goto/16 :goto_0
.end method
