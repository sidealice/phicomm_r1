.class public Lcom/unisound/vui/util/upload/DecodeResult;
.super Ljava/lang/Object;


# instance fields
.field private other:[B

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOther()[B
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/upload/DecodeResult;->other:[B

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/upload/DecodeResult;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setOther([B)V
    .locals 0
    .param p1, "other"    # [B

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/DecodeResult;->other:[B

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/DecodeResult;->userID:Ljava/lang/String;

    return-void
.end method
