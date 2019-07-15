.class public Lcom/unisound/lib/msgcenter/bean/Accelerate;
.super Ljava/lang/Object;
.source "Accelerate.java"


# instance fields
.field command:Ljava/lang/String;

.field valuse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/Accelerate;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getValuse()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/Accelerate;->valuse:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/Accelerate;->command:Ljava/lang/String;

    return-void
.end method

.method public setValuse(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/Accelerate;->valuse:Ljava/lang/String;

    return-void
.end method
