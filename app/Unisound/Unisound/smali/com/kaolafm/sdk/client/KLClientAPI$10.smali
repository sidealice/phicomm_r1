.class Lcom/kaolafm/sdk/client/KLClientAPI$10;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$count:I

.field final synthetic val$keywords:Ljava/lang/String;

.field final synthetic val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

.field final synthetic val$page:I

.field final synthetic val$type:Lcom/kaolafm/sdk/client/SearchType;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$type:Lcom/kaolafm/sdk/client/SearchType;

    iput-object p3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$keywords:Ljava/lang/String;

    iput p4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$page:I

    iput p5, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$count:I

    iput-object p6, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 6

    .prologue
    .line 448
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$type:Lcom/kaolafm/sdk/client/SearchType;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/SearchType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$keywords:Ljava/lang/String;

    iget v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$page:I

    iget v4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$count:I

    iget-object v5, p0, Lcom/kaolafm/sdk/client/KLClientAPI$10;->val$listener:Lcom/kaolafm/sdk/client/SearchResultV2;

    invoke-static/range {v0 .. v5}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$400(Lcom/kaolafm/sdk/client/KLClientAPI;ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    .line 449
    return-void
.end method
