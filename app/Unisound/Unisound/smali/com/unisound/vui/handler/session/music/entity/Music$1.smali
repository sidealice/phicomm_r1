.class final Lcom/unisound/vui/handler/session/music/entity/Music$1;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/entity/Music;
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
        "Lcom/unisound/vui/handler/session/music/entity/Music;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unisound/vui/handler/session/music/entity/Music;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 196
    new-instance v0, Lcom/unisound/vui/handler/session/music/entity/Music;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/music/entity/Music;-><init>()V

    .line 197
    .local v0, "music":Lcom/unisound/vui/handler/session/music/entity/Music;
    invoke-static {v0, p1}, Lcom/unisound/vui/handler/session/music/entity/Music;->access$000(Lcom/unisound/vui/handler/session/music/entity/Music;Landroid/os/Parcel;)V

    .line 198
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Music$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unisound/vui/handler/session/music/entity/Music;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/unisound/vui/handler/session/music/entity/Music;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 202
    new-array v0, p1, [Lcom/unisound/vui/handler/session/music/entity/Music;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/entity/Music$1;->newArray(I)[Lcom/unisound/vui/handler/session/music/entity/Music;

    move-result-object v0

    return-object v0
.end method
