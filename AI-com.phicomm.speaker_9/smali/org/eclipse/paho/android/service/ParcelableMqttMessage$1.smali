.class final Lorg/eclipse/paho/android/service/ParcelableMqttMessage$1;
.super Ljava/lang/Object;
.source "ParcelableMqttMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/ParcelableMqttMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/eclipse/paho/android/service/ParcelableMqttMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/eclipse/paho/android/service/ParcelableMqttMessage;
    .locals 1

    .line 107
    new-instance v0, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lorg/eclipse/paho/android/service/ParcelableMqttMessage;
    .locals 0

    .line 116
    new-array p1, p1, [Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/ParcelableMqttMessage$1;->a(Landroid/os/Parcel;)Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/ParcelableMqttMessage$1;->a(I)[Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    move-result-object p1

    return-object p1
.end method
