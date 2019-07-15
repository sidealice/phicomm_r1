.class public Lcom/unisound/vui/transport/out/BindStatusEvent;
.super Lcom/unisound/vui/transport/out/OutputEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/transport/out/OutputEvent",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isBound"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/transport/out/OutputEvent;-><init>(ILjava/lang/Object;)V

    return-void
.end method
