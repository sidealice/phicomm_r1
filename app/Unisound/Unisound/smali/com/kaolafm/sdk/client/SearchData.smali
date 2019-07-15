.class public Lcom/kaolafm/sdk/client/SearchData;
.super Ljava/lang/Object;
.source "SearchData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kaolafm/sdk/client/SearchData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private host:Ljava/lang/String;

.field private id:J

.field private img:Ljava/lang/String;

.field private listenNum:J

.field private name:Ljava/lang/String;

.field public singleTitle:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/kaolafm/sdk/client/SearchData$1;

    invoke-direct {v0}, Lcom/kaolafm/sdk/client/SearchData$1;-><init>()V

    sput-object v0, Lcom/kaolafm/sdk/client/SearchData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaolafm/sdk/client/SearchData;->id:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaolafm/sdk/client/SearchData;->type:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaolafm/sdk/client/SearchData;->listenNum:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->img:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->host:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->singleTitle:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/kaolafm/sdk/client/SearchData;->id:J

    return-wide v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getListenNum()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/kaolafm/sdk/client/SearchData;->listenNum:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->singleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/kaolafm/sdk/client/SearchData;->type:I

    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kaolafm/sdk/client/SearchData;->host:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/kaolafm/sdk/client/SearchData;->id:J

    .line 89
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kaolafm/sdk/client/SearchData;->img:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setListenNum(J)V
    .locals 1
    .param p1, "listenNum"    # J

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/kaolafm/sdk/client/SearchData;->listenNum:J

    .line 113
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kaolafm/sdk/client/SearchData;->name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSingleTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "singleTitle"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kaolafm/sdk/client/SearchData;->singleTitle:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/kaolafm/sdk/client/SearchData;->type:I

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/kaolafm/sdk/client/SearchData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/kaolafm/sdk/client/SearchData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-wide v0, p0, Lcom/kaolafm/sdk/client/SearchData;->listenNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->img:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/kaolafm/sdk/client/SearchData;->singleTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
