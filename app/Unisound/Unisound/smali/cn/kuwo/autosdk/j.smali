.class public Lcn/kuwo/autosdk/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/kuwo/autosdk/api/SearchMode;


# direct methods
.method public constructor <init>(Lcn/kuwo/autosdk/api/SearchMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object v0, p0, Lcn/kuwo/autosdk/j;->a:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object p1, p0, Lcn/kuwo/autosdk/j;->a:Lcn/kuwo/autosdk/api/SearchMode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)Lcn/kuwo/autosdk/bean/Music;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcn/kuwo/autosdk/bean/Music;

    invoke-direct {v1}, Lcn/kuwo/autosdk/bean/Music;-><init>()V

    :try_start_0
    const-string v2, "MUSICID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/kuwo/autosdk/j;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    iget-wide v2, v1, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-string v0, "SONGNAME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    const-string v0, "ARTIST"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    const-string v0, "ALBUM"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    const-string v0, "FORMAT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/autosdk/bean/Music;->fileFormat:Ljava/lang/String;

    const-string v0, "DURATION"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/autosdk/j;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/kuwo/autosdk/bean/Music;->duration:I

    const-string v0, "TAG"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/autosdk/bean/Music;->tag:Ljava/lang/String;

    const-string v0, "MVFLAG"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/autosdk/j;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    const-string v0, "MVQUALITY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    const-string v0, "MINFO"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/autosdk/bean/Music;->parseResourceStringFromQuku(Ljava/lang/String;)I

    const-string v0, "KMARK"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcn/kuwo/autosdk/j;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcn/kuwo/autosdk/bean/Music;->hasKalaok:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public a([BII)Ljava/lang/String;
    .locals 8

    const/4 v2, -0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x200

    :try_start_0
    new-array v6, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/zip/InflaterInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :goto_1
    if-ne v1, v2, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    :try_start_3
    const-string v1, "utf-8"

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_4
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_3
.end method

.method public a(Ljava/lang/String;I[I)Ljava/util/List;
    .locals 6

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    aput v3, p3, v3

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/j;->a:Lcn/kuwo/autosdk/api/SearchMode;

    const/16 v2, 0x1e

    invoke-static {p1, v1, p2, v2}, Lcn/kuwo/autosdk/w;->a(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Lcn/kuwo/autosdk/b;

    invoke-direct {v2}, Lcn/kuwo/autosdk/b;-><init>()V

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Lcn/kuwo/autosdk/b;->a(J)V

    invoke-virtual {v2, v1}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;)Lcn/kuwo/autosdk/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/kuwo/autosdk/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcn/kuwo/autosdk/a;->c:[B

    if-nez v2, :cond_4

    :cond_3
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    aput v1, p3, v3

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcn/kuwo/autosdk/a;->c:[B

    invoke-virtual {p0, v0}, Lcn/kuwo/autosdk/j;->a([B)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a([B)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_1
    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/kuwo/autosdk/o;->a([BZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3, v1}, Lcn/kuwo/autosdk/j;->a([BII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "hitmode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Hit"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "song"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v5, :cond_2

    const-string v3, "musiclist"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-lt v2, v4, :cond_3

    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/kuwo/autosdk/j;->a(Lorg/json/JSONObject;)Lcn/kuwo/autosdk/bean/Music;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "MUSIC_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    :try_start_0
    const-string v2, "MUSIC_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
