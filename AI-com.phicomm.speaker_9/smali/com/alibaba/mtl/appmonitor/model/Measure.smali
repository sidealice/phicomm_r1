.class public Lcom/alibaba/mtl/appmonitor/model/Measure;
.super Ljava/lang/Object;
.source "Measure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Double;

.field protected b:Ljava/lang/Double;

.field protected c:Ljava/lang/Double;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/Measure$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/Measure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    .line 42
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 43
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    .line 44
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    return-void
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 7

    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 152
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_3

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    .line 156
    :goto_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_4

    move v2, v3

    :cond_4
    if-nez v2, :cond_5

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_4

    :cond_5
    move-object p0, v0

    .line 163
    :goto_4
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v2, v5, p0, v4, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_5

    :catch_0
    move-exception p0

    .line 165
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 102
    :cond_2
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 103
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 104
    iget-object p1, p1, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getConstantValue()Ljava/lang/Double;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public getMax()Ljava/lang/Double;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public getMin()Ljava/lang/Double;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setConstantValue(Ljava/lang/Double;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    return-void
.end method

.method public setMax(Ljava/lang/Double;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    return-void
.end method

.method public setMin(Ljava/lang/Double;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    return-void
.end method

.method public setRange(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 50
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    return-void
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)Z
    .locals 5

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 122
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    if-eqz p2, :cond_3

    .line 129
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 132
    :cond_3
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    if-nez p2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    if-eqz p2, :cond_5

    .line 136
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method
