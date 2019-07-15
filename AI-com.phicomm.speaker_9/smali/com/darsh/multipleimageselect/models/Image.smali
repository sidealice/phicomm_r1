.class public Lcom/darsh/multipleimageselect/models/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/darsh/multipleimageselect/models/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:J

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/darsh/multipleimageselect/models/Image$1;

    invoke-direct {v0}, Lcom/darsh/multipleimageselect/models/Image$1;-><init>()V

    sput-object v0, Lcom/darsh/multipleimageselect/models/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/darsh/multipleimageselect/models/Image;->id:J

    .line 17
    iput-object p3, p0, Lcom/darsh/multipleimageselect/models/Image;->name:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    .line 19
    iput-boolean p5, p0, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/darsh/multipleimageselect/models/Image;->id:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/darsh/multipleimageselect/models/Image;->name:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/darsh/multipleimageselect/models/Image$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/models/Image;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/darsh/multipleimageselect/models/Image;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-object p2, p0, Lcom/darsh/multipleimageselect/models/Image;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
