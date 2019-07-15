.class public Lcom/unisound/ant/device/event/TurnOffWakeLightEvent;
.super Lcom/unisound/vui/transport/out/OutputEvent;
.source "TurnOffWakeLightEvent.java"


# static fields
.field private static final TYPE_TURN_OFF_WAKE_LIGHT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/unisound/vui/transport/out/OutputEvent;-><init>(I)V

    .line 14
    return-void
.end method
