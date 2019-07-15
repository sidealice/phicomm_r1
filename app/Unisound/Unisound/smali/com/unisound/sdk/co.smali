.class public Lcom/unisound/sdk/co;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = null

.field private static final d:I = 0x2710


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcn/yunzhisheng/casr/EncodeContent;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://rtc.hivoice.cn"

    sput-object v0, Lcom/unisound/sdk/co;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data-process-service/oneshot"

    iput-object v0, p0, Lcom/unisound/sdk/co;->b:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/casr/EncodeContent;

    invoke-direct {v0}, Lcn/yunzhisheng/casr/EncodeContent;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/co;->c:Lcn/yunzhisheng/casr/EncodeContent;

    iput-object p1, p0, Lcom/unisound/sdk/co;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/co;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "onlinewakeup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "onlineWakeupWord"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[`~!@#$%^&*()_\\+\\-\\={}|\\\\\\[\\]\\:\";\'<>?,./~\u00b7\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014\\+\\-\\={}|\u3010\u3011\u3001\uff1a\u201c\u201d\uff1b\u2018\u2019\u300a\u300b\uff1f\uff0c\u3002\u3001\uff40\uff5e\uff01\uff20\uff03\uff04\uff05\uff3e\uff06\uff0a\uff08\uff09\uff3f\uff0b\uff0d\uff1d\uff5b\uff5d\uff5c\uff3b\uff3d\uff3c\uff1a\uff02\uff02\uff1b\uff07\uff07\uff1c\uff1e\uff1f\uff0c\uff0e\uff0f\u00b7\uff5e\uff01\uff20\uff03\uffe5\uff05\u2026\u2026\uff06\u00d7\uff08\uff09\u2014\u2014\uff0b\uff0d\uff1d\uff5b\uff5d\uff5c\u3010\u3011\uff3c\uff1a\u201c\u201d\uff1b\u2018\u2019\u300a\u300b\uff1f\uff0c\u3002\u3001]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "status"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UploadOneShotOnlineWakeupData onlineWakeupWord => "

    aput-object v1, v0, v3

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/unisound/sdk/co;->a(I)Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/unisound/sdk/co;->c:Lcn/yunzhisheng/casr/EncodeContent;

    invoke-virtual {v3, v0, v1, v2}, Lcn/yunzhisheng/casr/EncodeContent;->EncodeTotalContent([B[B[B)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xf7ad

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/co;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/unisound/sdk/co;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/unisound/sdk/co;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "UploadOneShotOnlineWakeupData conn param => "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "upload response codeStr="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadOneShotOnlineWakeupData exception =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const v0, -0xf7ae

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/co;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const v0, -0xf7ab

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/unisound/sdk/co;->a(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/common/af;

    invoke-direct {v0}, Lcom/unisound/common/af;-><init>()V

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/unisound/common/af;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/co;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/common/af;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/co;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/af;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/co;->e:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unisound/sdk/co;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/af;->a(Ljava/util/Set;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/unisound/common/af;->b(Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/unisound/common/af;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/co;->e:Landroid/content/Context;

    const-string v1, "onlinewakeup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineWakeupWord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
