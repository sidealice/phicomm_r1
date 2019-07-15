.class public Lcom/unisound/vui/transport/DataStream;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unisound/vui/transport/DataStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/transport/DataStream$1;

    invoke-direct {v0}, Lcom/unisound/vui/transport/DataStream$1;-><init>()V

    sput-object v0, Lcom/unisound/vui/transport/DataStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/unisound/vui/transport/DataStream;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/unisound/vui/transport/DataStream$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/unisound/vui/transport/DataStream$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/transport/DataStream;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    iget-object v0, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public setDataBytes([B)V
    .locals 0
    .param p1, "dataBytes"    # [B

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/unisound/vui/transport/DataStream;->dataBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
