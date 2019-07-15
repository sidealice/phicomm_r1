.class final Lcom/unisound/vui/handler/session/music/entity/Album$1;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/entity/Album;
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
        "Lcom/unisound/vui/handler/session/music/entity/Album;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unisound/vui/handler/session/music/entity/Album;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Album;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Album;-><init>()V

    .line 83
    .local v0, "album":Lcom/unisound/vui/handler/session/music/entity/Album;
    invoke-static {v0, p1}, Lcom/unisound/vui/handler/session/music/entity/Album;->access$000(Lcom/unisound/vui/handler/session/music/entity/Album;Landroid/os/Parcel;)V

    .line 84
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Album$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unisound/vui/handler/session/music/entity/Album;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/unisound/vui/handler/session/music/entity/Album;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 88
    new-array v0, p1, [Lcom/unisound/vui/handler/session/music/entity/Album;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Album$1;->newArray(I)[Lcom/unisound/vui/handler/session/music/entity/Album;

    move-result-object v0

    return-object v0
.end method
