.class public final Lcom/unisound/vui/transport/DefaultMessageCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/transport/MessageCodec;


# static fields
.field private static final DEFAULT_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private final classifier:Lcom/unisound/vui/transport/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/transport/DefaultMessageCodec$1;

    invoke-direct {v0}, Lcom/unisound/vui/transport/DefaultMessageCodec$1;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/vui/transport/DefaultMessageCodec$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/transport/DefaultMessageCodec;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/transport/a$a;

    new-instance v1, Lcom/unisound/vui/transport/c;

    sget-object v2, Lcom/unisound/vui/transport/DefaultMessageCodec;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {v1, v2}, Lcom/unisound/vui/transport/c;-><init>(Ljava/lang/reflect/Type;)V

    invoke-direct {v0, v1}, Lcom/unisound/vui/transport/a$a;-><init>(Lcom/unisound/vui/transport/c;)V

    iput-object v0, p0, Lcom/unisound/vui/transport/DefaultMessageCodec;->classifier:Lcom/unisound/vui/transport/a;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/unisound/vui/transport/b;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/transport/DefaultMessageCodec;->classifier:Lcom/unisound/vui/transport/a;

    invoke-interface {v0, p1}, Lcom/unisound/vui/transport/a;->a(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/transport/b;

    goto :goto_0
.end method

.method public encode(Lcom/unisound/vui/transport/b;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/unisound/vui/transport/b;

    .prologue
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
