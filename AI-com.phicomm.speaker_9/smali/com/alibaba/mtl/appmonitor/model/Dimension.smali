.class public Lcom/alibaba/mtl/appmonitor/model/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/model/Dimension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected name:Ljava/lang/String;

.field protected y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Dimension$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    .line 19
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    .line 19
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->y:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "null"

    .line 31
    :goto_0
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->y:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .locals 2

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v1, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
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

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 63
    :cond_2
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 64
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 65
    iget-object p1, p1, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getConstantValue()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setConstantValue(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->y:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
