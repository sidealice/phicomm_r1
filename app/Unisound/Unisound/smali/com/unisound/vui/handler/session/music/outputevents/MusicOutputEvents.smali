.class public Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;
.super Lcom/unisound/vui/transport/out/OutputEvent;
.source "MusicOutputEvents.java"


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
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isEntering"    # Z

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/transport/out/OutputEvent;-><init>(ILjava/lang/Object;)V

    .line 14
    return-void
.end method
