.class Lcom/unisound/lib/UnisAccountAssistant$1;
.super Ljava/lang/Object;
.source "UnisAccountAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisAccountAssistant;->bindAccount(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisAccountAssistant;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$extData:Ljava/lang/String;

.field final synthetic val$thirdPartyId:I

.field final synthetic val$thirdPartyToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisAccountAssistant;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    iput p2, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$thirdPartyId:I

    iput-object p3, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$clientId:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$thirdPartyToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$extData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 225
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->this$0:Lcom/unisound/lib/UnisAccountAssistant;

    const-string v1, "UnisAccountAssistant"

    iget v2, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$thirdPartyId:I

    iget-object v3, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$clientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$thirdPartyToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/unisound/lib/UnisAccountAssistant$1;->val$extData:Ljava/lang/String;

    new-instance v6, Lcom/unisound/lib/UnisAccountAssistant$1$1;

    invoke-direct {v6, p0}, Lcom/unisound/lib/UnisAccountAssistant$1$1;-><init>(Lcom/unisound/lib/UnisAccountAssistant$1;)V

    invoke-static/range {v0 .. v6}, Lcom/unisound/lib/UnisAccountAssistant;->access$300(Lcom/unisound/lib/UnisAccountAssistant;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpUserCallBack;)V

    return-void
.end method
