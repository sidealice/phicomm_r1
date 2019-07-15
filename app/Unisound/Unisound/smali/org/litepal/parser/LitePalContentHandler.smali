.class public Lorg/litepal/parser/LitePalContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LitePalContentHandler.java"


# instance fields
.field private litePalAttr:Lorg/litepal/parser/LitePalAttr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/parser/LitePalContentHandler;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    .line 66
    iget-object v0, p0, Lorg/litepal/parser/LitePalContentHandler;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 76
    const-string v1, "dbname"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 101
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 78
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lorg/litepal/parser/LitePalContentHandler;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setDbName(Ljava/lang/String;)V

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_3
    const-string v1, "version"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    const-string v1, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    iget-object v1, p0, Lorg/litepal/parser/LitePalContentHandler;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setVersion(I)V

    .line 83
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_5
    const-string v1, "mapping"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    const-string v1, "class"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    iget-object v1, p0, Lorg/litepal/parser/LitePalContentHandler;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->addClassName(Ljava/lang/String;)V

    .line 89
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    .end local v0    # "i":I
    :cond_7
    const-string v1, "cases"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    const-string v1, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 97
    iget-object v1, p0, Lorg/litepal/parser/LitePalContentHandler;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setCases(Ljava/lang/String;)V

    .line 95
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
