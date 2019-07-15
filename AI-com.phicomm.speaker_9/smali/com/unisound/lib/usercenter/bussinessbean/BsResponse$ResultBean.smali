.class public Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;
.super Ljava/lang/Object;
.source "BsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setEntryId(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ResultBean;->entryId:Ljava/lang/String;

    return-void
.end method
