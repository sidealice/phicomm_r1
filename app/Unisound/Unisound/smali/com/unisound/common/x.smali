.class public Lcom/unisound/common/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "appKey"

.field public static final b:Ljava/lang/String; = "imei"

.field public static final c:Ljava/lang/String; = "sessionID"

.field public static final d:Ljava/lang/String; = "sessionId"

.field public static final e:Ljava/lang/String; = "timeStamp"

.field public static final f:Ljava/lang/String; = "packageName"

.field public static final g:Ljava/lang/String; = "status"

.field public static final h:Ljava/lang/String; = "errString"

.field public static final i:Ljava/lang/String; = "javaSDKLog"

.field public static final j:Ljava/lang/String; = "cSDKLog"

.field private static final k:Ljava/lang/String; = "http://log.hivoice.cn/trace/basicService/"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->l:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->m:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/x;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->l:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->m:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/common/x;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/x;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/x;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/common/x;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/common/x;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/common/x;->o:Ljava/lang/String;

    iput-object p5, p0, Lcom/unisound/common/x;->p:Ljava/lang/String;

    iput p6, p0, Lcom/unisound/common/x;->q:I

    iput-object p7, p0, Lcom/unisound/common/x;->r:Ljava/lang/String;

    iput-object p8, p0, Lcom/unisound/common/x;->s:Ljava/lang/String;

    iput-object p9, p0, Lcom/unisound/common/x;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "http://log.hivoice.cn/trace/basicService/"

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/x;->q:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->l:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->m:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->o:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->o:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->p:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->p:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->r:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/x;->q:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->s:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/x;->t:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->s:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/x;->t:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sessionId"

    iget-object v3, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    iget-object v3, p0, Lcom/unisound/common/x;->p:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    iget v3, p0, Lcom/unisound/common/x;->q:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errString"

    iget-object v3, p0, Lcom/unisound/common/x;->r:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/unisound/common/x;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-byte v5, v3, v1

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "javaSDKLog"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/unisound/common/x;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-byte v4, v3, v0

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "cSDKLog"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    goto :goto_2
.end method

.method public l()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/unisound/common/x;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    iget-object v2, p0, Lcom/unisound/common/x;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionID"

    iget-object v2, p0, Lcom/unisound/common/x;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "BASEURL = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "http://log.hivoice.cn/trace/basicService/"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v1, "http://log.hivoice.cn/trace/basicService/"

    invoke-static {v1, v0}, Lcom/unisound/common/aj;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
