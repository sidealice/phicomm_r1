.class public abstract Lcom/unisound/vui/engine/ANTHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/engine/ANTHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method
