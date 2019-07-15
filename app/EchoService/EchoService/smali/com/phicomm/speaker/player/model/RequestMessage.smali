.class public Lcom/phicomm/speaker/player/model/RequestMessage;
.super Ljava/lang/Object;
.source "RequestMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phicomm/speaker/player/model/RequestMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRequestContent:Ljava/lang/Object;

.field private mRequestCseq:I

.field private mRequestMethod:I

.field private mRequestType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/phicomm/speaker/player/model/RequestMessage$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/model/RequestMessage$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/model/RequestMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestType:I

    .line 18
    iput p2, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestMethod:I

    .line 19
    iput p3, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestCseq:I

    .line 20
    iput-object p4, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestContent:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestType:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestMethod:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestCseq:I

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestContent:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestContent:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestCseq()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestCseq:I

    return v0
.end method

.method public getRequestMethod()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestMethod:I

    return v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestMessage{mRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestCseq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestCseq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestContent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestCseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RequestMessage;->mRequestContent:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
