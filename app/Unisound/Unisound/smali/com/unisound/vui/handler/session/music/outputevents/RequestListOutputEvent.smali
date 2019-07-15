.class public Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;
.super Lcom/unisound/vui/transport/out/OutputEvent;
.source "RequestListOutputEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/transport/out/OutputEvent",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x2

.field public static final TYPE_MUSIC:I = 0x1

.field public static final TYPE_NEWS:I = 0x3


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "page"    # I

    .prologue
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/transport/out/OutputEvent;-><init>(ILjava/lang/Object;)V

    .line 22
    return-void
.end method
