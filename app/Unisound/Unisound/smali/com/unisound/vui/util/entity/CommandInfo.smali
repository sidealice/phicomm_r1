.class public Lcom/unisound/vui/util/entity/CommandInfo;
.super Ljava/lang/Object;


# instance fields
.field private command:Ljava/lang/String;

.field private operands:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mCommand"    # Ljava/lang/String;
    .param p2, "mOperands"    # Ljava/lang/String;
    .param p3, "mOperator"    # Ljava/lang/String;
    .param p4, "mValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/util/entity/CommandInfo;->command:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/vui/util/entity/CommandInfo;->operands:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/util/entity/CommandInfo;->operator:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/vui/util/entity/CommandInfo;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/entity/CommandInfo;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getOperands()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/entity/CommandInfo;->operands:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/entity/CommandInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/entity/CommandInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/entity/CommandInfo;->command:Ljava/lang/String;

    return-void
.end method

.method public setOperands(Ljava/lang/String;)V
    .locals 0
    .param p1, "operands"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/entity/CommandInfo;->operands:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/entity/CommandInfo;->operator:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/entity/CommandInfo;->value:Ljava/lang/String;

    return-void
.end method
