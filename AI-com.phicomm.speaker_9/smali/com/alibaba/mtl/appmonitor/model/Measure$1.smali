.class final Lcom/alibaba/mtl/appmonitor/model/Measure$1;
.super Ljava/lang/Object;
.source "Measure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/Measure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/mtl/appmonitor/model/Measure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 0

    .line 178
    new-array p1, p1, [Lcom/alibaba/mtl/appmonitor/model/Measure;

    return-object p1
.end method

.method public b(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/Measure$1;->b(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/Measure$1;->a(I)[Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object p1

    return-object p1
.end method
