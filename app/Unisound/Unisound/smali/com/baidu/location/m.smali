.class final Lcom/baidu/location/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/location/i;",
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
.method public a(Landroid/os/Parcel;)Lcom/baidu/location/i;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    new-instance v4, Lcom/baidu/location/i;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/baidu/location/i;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    return-object v4
.end method

.method public a(I)[Lcom/baidu/location/i;
    .locals 1

    new-array v0, p1, [Lcom/baidu/location/i;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/location/m;->a(Landroid/os/Parcel;)Lcom/baidu/location/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/location/m;->a(I)[Lcom/baidu/location/i;

    move-result-object v0

    return-object v0
.end method
