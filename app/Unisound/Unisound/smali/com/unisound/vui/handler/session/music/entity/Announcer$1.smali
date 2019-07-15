.class final Lcom/unisound/vui/handler/session/music/entity/Announcer$1;
.super Ljava/lang/Object;
.source "Announcer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/entity/Announcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/unisound/vui/handler/session/music/entity/Announcer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unisound/vui/handler/session/music/entity/Announcer;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Announcer;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Announcer;-><init>()V

    .line 64
    .local v0, "announcer":Lcom/unisound/vui/handler/session/music/entity/Announcer;
    invoke-static {v0, p1}, Lcom/unisound/vui/handler/session/music/entity/Announcer;->access$000(Lcom/unisound/vui/handler/session/music/entity/Announcer;Landroid/os/Parcel;)V

    .line 65
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Announcer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unisound/vui/handler/session/music/entity/Announcer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/unisound/vui/handler/session/music/entity/Announcer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 69
    new-array v0, p1, [Lcom/unisound/vui/handler/session/music/entity/Announcer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Announcer$1;->newArray(I)[Lcom/unisound/vui/handler/session/music/entity/Announcer;

    move-result-object v0

    return-object v0
.end method
