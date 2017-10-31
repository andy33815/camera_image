/********************************************************************
	created:	2010/04/06
	created:	6:4:2010   18:00
	filename: 	RawToBmp.cpp
	file path:	RAW8ToRGB24
	file base:	RawToBmp
	file ext:	cpp
	author:		haifeng_liu
	
	purpose:	��"(8bit)Rawͼ���ļ�ת��Ϊ(RGB24)Bmpͼ���ļ�"��ʾ
*********************************************************************/

#include <iostream.h>
#include <stdio.h>
#include <windows.h>
#include <wingdi.h>


#define H 480		// ����Ҫת��ͼ������
#define W 640		// ����Ҫת��ͼ������

// ע: �ڽ�Flag ����Ϊ0֮ǰ, ���Լ�ʵ��
// void RGB24_GeomMir( BYTE *pImage, const UINT iHeigh, const UINT iWidth, BOOL bDirection )
// �������
// Flag == 1, �������ص�(����R,G,B��������)Ϊ��λ���в���
// Flag == 0, ��ֱ���R, G, B����Ϊ��λ���в���
#define Flag 1

typedef enum { 
	B,				// ����Raw������Blue Data
	Gb,				// ����Raw������Green Data
	Gr,				// ����Raw������Green Data
	R				// ����Raw������Red Data
} ColorType;

typedef struct {
	BYTE byB;
	BYTE byG;
	BYTE byR;
} RGBPixel;			// ����RGB24��һ�����ص�

typedef struct {
	DWORD dwBout;
	DWORD dwGout;
	DWORD dwRout;
} RGBSumData;		

// ����RAWתRGB, ��"���ڽ���ֵ��"��"˫���Բ�ֵ�㷨"
// ����ʹ��˫���Բ�ֵ�㷨, ʹ��˫���Բ�ֵ�㷨�õ���ͼ��Ƚ�ƽ��, 
// ������"���ڽ���ֵ�㷨"�ᶪʧͼ���һЩ��Ե��Ϣ, �ŵ�����ٶȺܿ�
// 
// +++++
void BToRGB(const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData);
void GbToRGB(const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData);
void GrToRGB(const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData);
void RToRGB(const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData);
void AjustValue(RGBSumData& SumData);
// -----

// ��ͼ������ֱ����任
void RGB24_GeomMirV(RGBPixel *pImage, const UINT iHeigh, const UINT iWidth);
void RGB24_GeomMirV(BYTE *pImage, const UINT iHeigh, const UINT iWidth);

// ��ͼ����ˮƽ����任
void RGB24_GeomMirH(RGBPixel *pImage, const UINT iHeigh, const UINT iWidth);
void RGB24_GeomMirH(BYTE *pImage, const UINT iHeigh, const UINT iWidth);

// ��ͼ��������任
void RGB24_GeomMir(RGBPixel *pImage, const UINT iHeigh, const UINT iWidth, BOOL bDiretion);
void RGB24_GeomMir(BYTE *pImage, const UINT iHeigh, const UINT iWidth, BOOL bDirection);


void main()
{
	UINT i = 0, j = 0;
	ULONG lIdx = 0;
	char filename[50];	
	RGBSumData SumData = {0};
	ColorType ct;
    BYTE* image1=new BYTE[H*W];	
#if Flag
	RGBPixel *image2 = new RGBPixel[H*W];
#else
	BYTE *image3 = new BYTE[H*W*3];
#endif

	BITMAPFILEHEADER* fileheader;
	BITMAPINFOHEADER* infoheader;
	unsigned int FHlen=sizeof(BITMAPFILEHEADER);
	unsigned int IHlen=sizeof(BITMAPINFOHEADER);
	
	//λͼ��Ϣͷ�ṹ
	infoheader=new BITMAPINFOHEADER;
	memset(infoheader,0,IHlen);
	infoheader->biSize =40;
	infoheader->biWidth =W;
	infoheader->biHeight =H;
	infoheader->biPlanes =1;
	infoheader->biBitCount =24;
	infoheader->biCompression =BI_RGB;
	infoheader->biSizeImage =H*W*3;

	//λͼ�ļ�ͷ�ṹ
	fileheader=new BITMAPFILEHEADER;
	memset(fileheader,0,FHlen);
	fileheader->bfType =0x4D42;
	fileheader->bfSize =FHlen+IHlen+H*W*3;
	fileheader->bfOffBits=FHlen+IHlen;

	//��ȡRAWͼ���ļ������ݵ�����image1��
 	cout<<"������Ҫ�򿪵��ļ���"<<endl;
 	cin>>filename;
	
	FILE *fp;
	if((fp=fopen(filename,"rb"))==0)//����Ҫ�򿪵��ļ�
	{
		cout<<"Cannot open file,push any key!"<<endl;	//������ɴ򿪣�����
		getchar();
		return;
	}
	fread(image1,sizeof(BYTE),H*W,fp);
	fclose(fp);	

	UINT iY = 0, iX = 0;

	for (i = 0; i < H; i++)
	{
		for (j = 0; j < W; j++)
		{
			if (0 == i%2 && 0 == j%2)
			{
				ct = B;
			}
			else if (0 == i%2 && 1 == j%2)
			{
				ct = Gb;
			}
			else if (1 == i%2 && 0 == j%2)
			{
				ct = Gr;
			}
			else
			{
				ct = R;
			}		

			iY = i;
			iX = j;
		

			switch (ct)
			{
			case B:			
				BToRGB(iY, iX, image1, SumData);
				break;
			case Gb:
				GbToRGB(iY, iX, image1, SumData);
				break;
			case Gr:
				GrToRGB(iY, iX, image1, SumData);
				break;
			case R:	
				RToRGB(iY, iX, image1, SumData);
				break;			
			}		

#if Flag
			image2[lIdx].byB = (BYTE)SumData.dwBout;
			image2[lIdx].byG = (BYTE)SumData.dwGout;
			image2[lIdx].byR = (BYTE)SumData.dwRout;

			lIdx++;
#else
			image3[lIdx]	= (BYTE)SumData.dwBout;
			image3[lIdx+1]	= (BYTE)SumData.dwGout;
			image3[lIdx+2]	= (BYTE)SumData.dwRout;

			lIdx += 3;
#endif 

		}
	}

#if Flag	
	RGB24_GeomMirV(image2, H, W);
#else
	RGB24_GeomMirV(image3, H, W);
#endif	

	cout<<"********************************************************************************"<<endl;
	FILE *fp1;
 	cout<<"������Ҫ������ļ�����"<<endl;
 	cin>>filename;	
	if((fp1=fopen(filename,"wb"))==0)			//����Ҫ�򿪵��ļ�
	{
		cout<<"Cannot open file"<<endl;			//������ܴ򿪣�����
		getchar();
		return;
	}
	fwrite(fileheader, 1, FHlen, fp1);
	fwrite(infoheader, 1, IHlen, fp1);	

#if Flag
	fwrite(image2, sizeof(RGBPixel), H*W, fp1);
#else
	fwrite(image3, sizeof(BYTE), H*W*3, fp1);
#endif

	fclose(fp1);
	cout<<endl;
	cout<<"********************************************************************************"<<endl;
	cout<<"�ļ��ѱ��棬��лʹ�ã�"<<endl;
    
	delete[] image1;

#if Flag
	delete[] image2;	
#else
	delete[] image3;
#endif

	delete fileheader;
	delete infoheader;
}


void BToRGB( const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData)
{
	BYTE b[9];
	BYTE g[12];
	BYTE r[4];

	b[0] = pImage[iY*W+iX];
	b[1] = pImage[iY*W+iX+2];
	b[2] = pImage[iY*W+iX+4];

	b[3] = pImage[(iY+2)*W+iX];
	b[4] = pImage[(iY+2)*W+iX+2];
	b[5] = pImage[(iY+2)*W+iX+4];

	b[6] = pImage[(iY+4)*W+iX];
	b[7] = pImage[(iY+4)*W+iX+2];
	b[8] = pImage[(iY+4)*W+iX+4];

	SumData.dwBout = b[0] + (b[1])*6 + b[2]
			+ (b[3])*6 + (b[4])*36 + (b[5])*6
			+ b[6] + (b[7])*6 + b[8];
	

	g[0] = pImage[iY*W+iX+1];
	g[1] = pImage[iY*W+iX+3];

	g[2] = pImage[(iY+1)*W+iX];
	g[3] = pImage[(iY+1)*W+iX+2];
	g[4] = pImage[(iY+1)*W+iX+4];

	g[5] = pImage[(iY+2)*W+iX+1];
	g[6] = pImage[(iY+2)*W+iX+3];

	g[7] = pImage[(iY+3)*W+iX];
	g[8] = pImage[(iY+3)*W+iX+2];
	g[9] = pImage[(iY+3)*W+iX+4];

	g[10] = pImage[(iY+4)*W+iX+1];
	g[11] = pImage[(iY+4)*W+iX+3];

	SumData.dwGout = g[0] + g[1]
			+ g[2] + (g[3])*14 + g[4]
			+ (g[5])*14 + (g[6])*14
			+ g[7] + (g[8])*14 + g[9]
			+ g[10] + g[11];
	


	r[0] = pImage[(iY+1)*W+iX+1];
	r[1] = pImage[(iY+1)*W+iX+3];
	r[2] = pImage[(iY+3)*W+iX+1];
	r[3] = pImage[(iY+3)*W+iX+3];

	SumData.dwRout = (r[0] + r[1] + r[2] + r[3])*16;
	
	AjustValue(SumData);
	
}

void GbToRGB( const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData)
{
	BYTE b[6];
	BYTE g[9];
	BYTE r[6];

	b[0] = pImage[iY*W+iX+1];
	b[1] = pImage[iY*W+iX+3];
	b[2] = pImage[(iY+2)*W+iX+1];
	b[3] = pImage[(iY+2)*W+iX+3];
	b[4] = pImage[(iY+4)*W+iX+1];
	b[5] = pImage[(iY+4)*W+iX+3];

	SumData.dwBout = (b[0] + b[1])*4 
			+ (b[2] + b[3])*24
			+ (b[4] + b[5])*4;

	g[0] = pImage[iY*W+iX+2];

	g[1] = pImage[(iY+1)*W+iX+1];
	g[2] = pImage[(iY+1)*W+iX+3];
	
	g[3] = pImage[(iY+2)*W+iX];
	g[4] = pImage[(iY+2)*W+iX+2];
	g[5] = pImage[(iY+2)*W+iX+4];

	g[6] = pImage[(iY+3)*W+iX+1];
	g[7] = pImage[(iY+3)*W+iX+3];

	g[8] = pImage[(iY+4)*W+iX+2];

	SumData.dwGout = (g[0])*2
			+ (g[1] + g[2])*8
			+ (g[3])*2 + (g[4])*24 + (g[5])*2
			+ (g[6] + g[7])*8
			+ (g[7])*2;

	r[0] = pImage[(iY+1)*W+iX];
	r[1] = pImage[(iY+1)*W+iX+2];
	r[2] = pImage[(iY+1)*W+iX+4];

	r[3] = pImage[(iY+3)*W+iX];
	r[4] = pImage[(iY+3)*W+iX+2];
	r[5] = pImage[(iY+3)*W+iX+4];

	SumData.dwRout = (r[0])*4 + (r[1])*24 + (r[2])*4
			+ (r[3])*4 + (r[4])*24 + (r[5])*4;


	AjustValue(SumData);


}

void GrToRGB( const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData)
{
	BYTE b[6];
	BYTE g[9];
	BYTE r[6];

	b[0] = pImage[(iY+1)*W+iX];
	b[1] = pImage[(iY+1)*W+iX+2];
	b[2] = pImage[(iY+1)*W+iX+4];

	b[3] = pImage[(iY+3)*W+iX];
	b[4] = pImage[(iY+3)*W+iX+2];
	b[5] = pImage[(iY+3)*W+iX+4];

	SumData.dwBout = (b[0] + b[1] + b[2])*4
			+ (b[3] + b[4] + b[5])*4;

	g[0] = pImage[iY*W+iX+2];
	
	g[1] = pImage[(iY+1)*W+iX+1];
	g[2] = pImage[(iY+1)*W+iX+3];

	g[3] = pImage[(iY+2)*W+iX];
	g[4] = pImage[(iY+2)*W+iX+2];
	g[5] = pImage[(iY+2)*W+iX+4];

	g[6] = pImage[(iY+3)*W+iX+1];
	g[7] = pImage[(iY+3)*W+iX+3];

	g[8] = pImage[(iY+4)*W+iX+2];

	SumData.dwGout = (g[0])*2
			+ (g[1] + g[2])*8
			+ (g[3])*2 + (g[4])*24 + (g[5])*2
			+ (g[6] + g[7])*8
			+ (g[8])*2;

	r[0] = pImage[iY*W+iX];
	r[1] = pImage[iY*W+iX+3];

	r[2] = pImage[(iY+2)*W+iX+1];
	r[3] = pImage[(iY+2)*W+iX+3];

	r[4] = pImage[(iY+4)*W+iX+1];
	r[5] = pImage[(iY+4)*W+iX+3];

	SumData.dwRout = (r[0] + r[1])*4
			+ (r[2] + r[3])*24
			+ (r[4] + r[5])*4;

	AjustValue(SumData);

}

void RToRGB( const UINT iY, const UINT iX, const BYTE *pImage, RGBSumData& SumData)
{
	BYTE r[9];
	BYTE g[12];
	BYTE b[4];
	
	r[0] = pImage[iY*W+iX];
	r[1] = pImage[iY*W+iX+2];
	r[2] = pImage[iY*W+iX+4];

	r[3] = pImage[(iY+2)*W+iX];
	r[4] = pImage[(iY+2)*W+iX+2];
	r[5] = pImage[(iY+2)*W+iX+4];

	r[6] = pImage[(iY+4)*W+iX];
	r[7] = pImage[(iY+4)*W+iX+2];
	r[8] = pImage[(iY+4)*W+iX+4];

	SumData.dwRout = r[0] + (r[1])*6 + r[2]
			+ (r[3])*6 + (r[4])*36 + (r[5])*6
			+ r[6] + (r[7])*6 + r[8];

	g[0] = pImage[iY*W+iX+1];
	g[1] = pImage[iY+W+iX+3];
	
	g[2] = pImage[(iY+1)*W+iX];
	g[3] = pImage[(iY+1)*W+iX+2];
	g[4] = pImage[(iY+1)*W+iX+4];

	g[5] = pImage[(iY+2)*W+iX+1];
	g[6] = pImage[(iY+2)*W+iX+3];

	g[7] = pImage[(iY+3)*W+iX];
	g[8] = pImage[(iY+3)*W+iX+2];
	g[9] = pImage[(iY+3)*W+iX+4];

	g[10] = pImage[(iY+4)*W+iX+1];
	g[11] = pImage[(iY+4)*W+iX+3];

	SumData.dwGout = g[0] + g[1]
		+ g[2] + (g[3])*14 + g[4]
		+ (g[5] + g[6])*14
		+ g[7] + (g[8])*14 + g[9]
		+ g[10] + g[11];

	b[0] = pImage[(iY+1)*W+iX+1];
	b[1] = pImage[(iY+1)*W+iX+3];

	b[2] = pImage[(iY+3)*W+iX+1];
	b[3] = pImage[(iY+3)*W+iX+3];

	SumData.dwBout = (b[0] + b[1] + b[2] + b[3])*16;

	AjustValue(SumData);
	
}


void AjustValue(RGBSumData& SumData)
{
	SumData.dwBout = SumData.dwBout>>4;
	SumData.dwGout = SumData.dwGout>>4;
	SumData.dwRout = SumData.dwRout>>4;
	

	SumData.dwBout = SumData.dwBout > 255 ? 255 : SumData.dwBout;
	SumData.dwGout = SumData.dwGout > 255 ? 255 : SumData.dwGout;
	SumData.dwRout = SumData.dwRout > 255 ? 255 : SumData.dwRout;
}

void RGB24_GeomMirV( RGBPixel *pImage, const UINT iHeigh, const UINT iWidth )
{
	RGB24_GeomMir(pImage, iHeigh, iWidth, FALSE);		
}

void RGB24_GeomMirV( BYTE *pImage, const UINT iHeigh, const UINT iWidth )
{
	RGB24_GeomMir(pImage, iHeigh, iWidth, FALSE);
}

void RGB24_GeomMirH( RGBPixel *pImage, const UINT iHeigh, const UINT iWidth )
{
	RGB24_GeomMir(pImage, iHeigh, iWidth, TRUE);
}

void RGB24_GeomMirH( BYTE *pImage, const UINT iHeigh, const UINT iWidth )
{
	RGB24_GeomMir(pImage, iHeigh, iWidth, TRUE);
}

void RGB24_GeomMir( RGBPixel *pImage, const UINT iHeigh, const UINT iWidth, BOOL bDiretion )
{
	UINT i = 0, j = 0;	
	RGBPixel *pLine = NULL;
	RGBPixel *pSrc = NULL;
	RGBPixel *pDst = NULL;	

	pLine = new RGBPixel[iWidth];
	if (NULL == pLine)
	{
		//AfxMessageBox(_T("Error!"));
		return;
	}

	// ˮƽ����
	if (bDiretion)
	{
		for (i = 0; i < iHeigh; i++)
		{
			for (j = 0; j < iWidth/2; j++)
			{
				pSrc = pImage + iWidth*i + j;
				pDst = pImage + iWidth*(i+1) - j;

				*pLine = *pDst;
				*pDst = *pSrc;
				*pSrc = *pLine;
			}
		}

	}
	// ��ֱ����
	else
	{
		for (i = 0; i < iHeigh/2; i++)
		{
			pSrc = pImage + iWidth*i;
			pDst = pImage + iWidth*(iHeigh-i-1);

			memcpy(pLine, pDst, sizeof(RGBPixel)*iWidth);

			memcpy(pDst, pSrc, sizeof(RGBPixel)*iWidth);

			memcpy(pSrc, pLine, sizeof(RGBPixel)*iWidth);
		}

	}

	delete [] pLine;
}

void RGB24_GeomMir( BYTE *pImage, const UINT iHeigh, const UINT iWidth, BOOL bDirection )
{
	// ����δʵ��...
}