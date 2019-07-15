.class final Lcom/unisound/vui/engine/DefaultANTHandlerContext;
.super Lcom/unisound/vui/engine/AbstractANTHandlerContext;


# instance fields
.field private final handler:Lcom/unisound/vui/engine/ANTHandler;


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/DefaultANTPipeline;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)V
    .locals 2
    .param p1, "pipeline"    # Lcom/unisound/vui/engine/DefaultANTPipeline;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    invoke-static {p3}, Lcom/unisound/vui/engine/DefaultANTHandlerContext;->isInbound(Lcom/unisound/vui/engine/ANTHandler;)Z

    move-result v0

    invoke-static {p3}, Lcom/unisound/vui/engine/DefaultANTHandlerContext;->isOutbound(Lcom/unisound/vui/engine/ANTHandler;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;ZZLjava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/unisound/vui/engine/DefaultANTHandlerContext;->handler:Lcom/unisound/vui/engine/ANTHandler;

    return-void
.end method

.method private static isInbound(Lcom/unisound/vui/engine/ANTHandler;)Z
    .locals 1
    .param p0, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    instance-of v0, p0, Lcom/unisound/vui/engine/ANTInboundHandler;

    return v0
.end method

.method private static isOutbound(Lcom/unisound/vui/engine/ANTHandler;)Z
    .locals 1
    .param p0, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    instance-of v0, p0, Lcom/unisound/vui/engine/ANTOutboundHandler;

    return v0
.end method


# virtual methods
.method public handler()Lcom/unisound/vui/engine/ANTHandler;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTHandlerContext;->handler:Lcom/unisound/vui/engine/ANTHandler;

    return-object v0
.end method
