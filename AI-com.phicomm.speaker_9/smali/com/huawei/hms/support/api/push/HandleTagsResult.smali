.class public Lcom/huawei/hms/support/api/push/HandleTagsResult;
.super Lcom/huawei/hms/support/api/client/Result;


# instance fields
.field protected resp:Lcom/huawei/hms/support/api/entity/push/TagsResp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagsRes()Lcom/huawei/hms/support/api/entity/push/TagsResp;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/push/HandleTagsResult;->resp:Lcom/huawei/hms/support/api/entity/push/TagsResp;

    return-object v0
.end method

.method public setTagsRes(Lcom/huawei/hms/support/api/entity/push/TagsResp;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/push/HandleTagsResult;->resp:Lcom/huawei/hms/support/api/entity/push/TagsResp;

    return-void
.end method
