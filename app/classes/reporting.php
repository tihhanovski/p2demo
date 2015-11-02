<?php
/**
 * Common queries
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) 2015 Ilja Tihhanovski
 *
 */

	class P2DemoReport extends PdfTableReport
	{
		function addColumn($col)
		{
			$this->columns[$col->name] = $col;
		}

		public function xywhCell($x, $y, $w, $h, $s, $a = "L")
		{
			$this->SetY($y);
			$this->SetX($x);
			$this->MultiCell($w, $h, $s, 0, $a);
		}

		public function Footer()
		{
			$sys = app()->system();
			$sys->loadDynamicPropertiesIfNotLoaded();

			if(!$this->maxX)
				$this->initFormatting();

			$this->SetY(-18);
			$this->Line(20, $this->GetY(), 200, $this->GetY(), $this->lineStyle);

			$y = -16;
			$this->SetFont($this->defaultFontFamily, "B", 8);
			$this->xywhCell(20, $y, 50, 5, $sys->dynCompanyName);
			$this->SetFont($this->defaultFontFamily, "", 8);
			$this->xywhCell(80, $y, 20, 5, t("Tel"));
			$this->xywhCell(100, $y, 40, 5, $sys->dynCompanyPhone);
			$this->xywhCell(140, $y, 20, 5, "IBAN");
			$this->xywhCell(160, $y, 40, 5,	$sys->dynCompanyIBAN);

			$y = -12;
			$this->xywhCell(20, $y, 50, 5, app()->getCompanyAddress());
			$this->xywhCell(80, $y, 20, 5, t("Fax"));
			$this->xywhCell(100, $y, 40, 5, $sys->dynCompanyFax);
			$this->xywhCell(140, $y, 20, 5, "SWIFT");
			$this->xywhCell(160, $y, 40, 5, $sys->dynCompanySWIFT);

			$y = -8;
			$this->xywhCell(160, $y, 40, 5, $sys->dynCompanyBank);
		}

		public function finish()
		{
			$this->Output("test.pdf", "I");
		}
	}