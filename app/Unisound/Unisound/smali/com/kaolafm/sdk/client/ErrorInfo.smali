.class public Lcom/kaolafm/sdk/client/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kaolafm/sdk/client/ErrorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errCode:I

.field public info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/kaolafm/sdk/client/ErrorInfo$1;

    invoke-direct {v0}, Lcom/kaolafm/sdk/client/ErrorInfo$1;-><init>()V

    sput-object v0, Lcom/kaolafm/sdk/client/ErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "error"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->info:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->errCode:I

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "error"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->info:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->errCode:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->info:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    iget v0, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->errCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object v0, p0, Lcom/kaolafm/sdk/client/ErrorInfo;->info:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    return-void
.end method
