.class final Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;
.super Ljava/lang/Object;
.source "MeasureValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 0

    .line 162
    new-array p1, p1, [Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object p1
.end method

.method public b(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 0

    .line 157
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;->b(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;->a(I)[Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p1

    return-object p1
.end method
