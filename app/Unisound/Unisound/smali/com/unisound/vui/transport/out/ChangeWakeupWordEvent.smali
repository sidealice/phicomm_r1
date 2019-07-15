.class public Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;
.super Lcom/unisound/vui/transport/out/OutputEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/transport/out/OutputEvent",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/transport/out/OutputEvent;-><init>(ILjava/lang/Object;)V

    return-void
.end method
