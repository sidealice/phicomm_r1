.class final Lcom/unisound/vui/transport/DataStream$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/transport/DataStream;
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
        "Lcom/unisound/vui/transport/DataStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/unisound/vui/transport/DataStream;
    .locals 2

    new-instance v0, Lcom/unisound/vui/transport/DataStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/unisound/vui/transport/DataStream;-><init>(Landroid/os/Parcel;Lcom/unisound/vui/transport/DataStream$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/unisound/vui/transport/DataStream;
    .locals 1

    new-array v0, p1, [Lcom/unisound/vui/transport/DataStream;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/transport/DataStream$1;->a(Landroid/os/Parcel;)Lcom/unisound/vui/transport/DataStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/transport/DataStream$1;->a(I)[Lcom/unisound/vui/transport/DataStream;

    move-result-object v0

    return-object v0
.end method
