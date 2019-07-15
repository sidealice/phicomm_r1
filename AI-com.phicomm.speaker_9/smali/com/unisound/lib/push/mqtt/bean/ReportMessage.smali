.class public Lcom/unisound/lib/push/mqtt/bean/ReportMessage;
.super Lcom/unisound/lib/push/mqtt/bean/SupMessage;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/lib/push/mqtt/bean/SupMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ReportMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ReportMessage;->token:Ljava/lang/String;

    return-void
.end method
