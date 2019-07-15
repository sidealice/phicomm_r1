.class public Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;
.super Lcom/unisound/vui/transport/out/OutputEvent;
.source "NetworkConfigOutputEvent.java"


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
    .param p1, "data"    # Ljava/lang/Boolean;

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/transport/out/OutputEvent;-><init>(ILjava/lang/Object;)V

    .line 12
    return-void
.end method
