.class public Lcom/unisound/vui/transport/out/OptionContent;
.super Ljava/lang/Object;


# instance fields
.field private optionKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "optionKey"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optionKey"
    .end annotation
.end field

.field private optionValue:Ljava/lang/Object;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "optionValue"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optionValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "optionKey"    # Ljava/lang/String;
    .param p2, "optionValue"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/transport/out/OptionContent;->optionKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/vui/transport/out/OptionContent;->optionValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOptionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/OptionContent;->optionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/OptionContent;->optionValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setOptionKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "optionKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/OptionContent;->optionKey:Ljava/lang/String;

    return-void
.end method

.method public setOptionValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "optionValue"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/OptionContent;->optionValue:Ljava/lang/Object;

    return-void
.end method
