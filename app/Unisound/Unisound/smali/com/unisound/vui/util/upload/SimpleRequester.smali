.class public Lcom/unisound/vui/util/upload/SimpleRequester;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_SUCCESS:Ljava/lang/String; = "0"

.field public static final TAG:Ljava/lang/String; = "SimpleRequester"


# instance fields
.field private head:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

.field private responseListener:Lcom/unisound/vui/common/network/d;

.field private tag:Ljava/lang/String;

.field private volleyUtils:Lcom/unisound/vui/common/network/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/upload/SimpleRequester$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/upload/SimpleRequester$1;-><init>(Lcom/unisound/vui/util/upload/SimpleRequester;)V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->responseListener:Lcom/unisound/vui/common/network/d;

    invoke-static {}, Lcom/unisound/vui/common/network/e;->a()Lcom/unisound/vui/common/network/e;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->volleyUtils:Lcom/unisound/vui/common/network/e;

    invoke-direct {p0}, Lcom/unisound/vui/util/upload/SimpleRequester;->initHead()V

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/util/upload/SimpleRequester;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/SimpleRequester;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unisound/vui/util/upload/SimpleRequester;)Lcom/unisound/vui/common/network/e;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/SimpleRequester;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->volleyUtils:Lcom/unisound/vui/common/network/e;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/util/upload/SimpleRequester;)Lcom/unisound/vui/util/upload/SimpleRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/SimpleRequester;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->listener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    return-object v0
.end method

.method private initHead()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->head:Ljava/util/Map;

    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->head:Ljava/util/Map;

    const-string v1, "encodeType"

    const-string v2, "add_base64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unisound/vui/util/upload/SimpleRequestListener;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Lorg/json/JSONObject;
    .param p4, "listener"    # Lcom/unisound/vui/util/upload/SimpleRequestListener;

    .prologue
    iput-object p4, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->listener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    iput-object p1, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "SimpleRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bodyStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->volleyUtils:Lcom/unisound/vui/common/network/e;

    const/4 v2, 0x1

    invoke-static {v1}, Lcom/unisound/vui/util/upload/ReqDataUtils;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->head:Ljava/util/Map;

    iget-object v6, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->responseListener:Lcom/unisound/vui/common/network/d;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;ILjava/lang/String;[BLjava/util/Map;Lcom/unisound/vui/common/network/d;)V

    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;[BLcom/unisound/vui/util/upload/SimpleRequestListener;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # [B
    .param p4, "listener"    # Lcom/unisound/vui/util/upload/SimpleRequestListener;

    .prologue
    iput-object p4, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->listener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    iput-object p1, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-string v0, "SimpleRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bodyStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->volleyUtils:Lcom/unisound/vui/common/network/e;

    const/4 v2, 0x1

    invoke-static {v1}, Lcom/unisound/vui/util/upload/ReqDataUtils;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->head:Ljava/util/Map;

    iget-object v6, p0, Lcom/unisound/vui/util/upload/SimpleRequester;->responseListener:Lcom/unisound/vui/common/network/d;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;ILjava/lang/String;[BLjava/util/Map;Lcom/unisound/vui/common/network/d;)V

    return-void
.end method
