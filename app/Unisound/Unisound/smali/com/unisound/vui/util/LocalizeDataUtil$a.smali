.class Lcom/unisound/vui/util/LocalizeDataUtil$a;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/LocalizeDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/util/LocalizeDataUtil;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/util/entity/CommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/unisound/vui/util/entity/CommandInfo;

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lcom/unisound/vui/util/LocalizeDataUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->a:Lcom/unisound/vui/util/LocalizeDataUtil;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/vui/util/LocalizeDataUtil;Lcom/unisound/vui/util/LocalizeDataUtil$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/LocalizeDataUtil$a;-><init>(Lcom/unisound/vui/util/LocalizeDataUtil;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unisound/vui/util/entity/CommandInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_command"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->c:Lcom/unisound/vui/util/entity/CommandInfo;

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/util/entity/CommandInfo;->setCommand(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "user_operands"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->c:Lcom/unisound/vui/util/entity/CommandInfo;

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/util/entity/CommandInfo;->setOperands(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "user_operator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->c:Lcom/unisound/vui/util/entity/CommandInfo;

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/util/entity/CommandInfo;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "user_value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->c:Lcom/unisound/vui/util/entity/CommandInfo;

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/util/entity/CommandInfo;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "command"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->c:Lcom/unisound/vui/util/entity/CommandInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v0, "command"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unisound/vui/util/entity/CommandInfo;

    invoke-direct {v0}, Lcom/unisound/vui/util/entity/CommandInfo;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->c:Lcom/unisound/vui/util/entity/CommandInfo;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/LocalizeDataUtil$a;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
